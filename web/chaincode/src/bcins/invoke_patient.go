package main

import (
	"encoding/json"
	"fmt"

	"github.com/hyperledger/fabric/core/chaincode/shim"
	pb "github.com/hyperledger/fabric/protos/peer"
)

func listTheftClaims(stub shim.ChaincodeStubInterface, args []string) pb.Response {
	results := []interface{}{}
	resultsIterator, err := stub.GetStateByPartialCompositeKey(prefixClaim, []string{})
	if err != nil {
		return shim.Error(err.Error())
	}
	defer resultsIterator.Close()

	for resultsIterator.HasNext() {
		kvResult, err := resultsIterator.Next()
		if err != nil {
			return shim.Error(err.Error())
		}

		claim := Claim{}
		err = json.Unmarshal(kvResult.Value, &claim)
		if err != nil {
			return shim.Error(err.Error())
		}
		// Filter out the irrelevant claims
		if !claim.IsAllowed || claim.Status != ClaimStatusNew {
			continue
		}

		contract, err := claim.Contract(stub)
		if err != nil {
			return shim.Error(err.Error())
		}
		if contract == nil {
			return shim.Error("Error acquiring contracts.")
		}

		result := struct {
			UUID         string `json:"uuid"`
			ContractUUID string `json:"contract_uuid"`
			Medicines    []item `json:"medicines"`
			Description  string `json:"description"`
			Name         string `json:"name"`
		}{}

		// Fetch key and set other properties
		prefix, keyParts, err := stub.SplitCompositeKey(kvResult.Key)
		if len(keyParts) < 2 {
			result.UUID = prefix
		} else {
			result.ContractUUID = keyParts[0]
			result.UUID = keyParts[1]
		}
		user, err := contract.User(stub)
		if err != nil {
			return shim.Error(err.Error())
		}
		if user == nil {
			return shim.Error("Error acquiring user.")
		}

		result.Medicines = contract.Medicines
		result.Description = claim.Description
		result.Name = fmt.Sprintf("%s %s", user.FirstName, user.LastName)

		results = append(results, result)
	}

	claimsAsBytes, err := json.Marshal(results)
	if err != nil {
		return shim.Error(err.Error())
	}
	return shim.Success(claimsAsBytes)
}

func processTheftClaim(stub shim.ChaincodeStubInterface, args []string) pb.Response {
	if len(args) != 1 {
		return shim.Error("Invalid argument count.")
	}

	dto := struct {
		UUID          string `json:"uuid"`
		ContractUUID  string `json:"contract_uuid"`
		IsAllowed     bool   `json:"is_allowed"`
		FileReference string `json:"file_reference"`
	}{}
	err := json.Unmarshal([]byte(args[0]), &dto)
	if err != nil {
		return shim.Error(err.Error())
	}

	key, err := stub.CreateCompositeKey(prefixClaim, []string{dto.ContractUUID, dto.UUID})
	if err != nil {
		return shim.Error(err.Error())
	}

	claimAsBytes, _ := stub.GetState(key)
	if len(claimAsBytes) == 0 {
		return shim.Error("Claim cannot be found.")
	}

	claim := Claim{}
	err = json.Unmarshal(claimAsBytes, &claim)
	if err != nil {
		return shim.Error(err.Error())
	}

	// Check if the correct kind of claim is about to be processed
	if !claim.IsAllowed || claim.Status != ClaimStatusNew {
		return shim.Error("Claim is either not related to theft, or has invalid status.")
	}

	if dto.IsAllowed {
		claim.Status = ClaimStatusTheftConfirmed
	} else {
		claim.Status = ClaimStatusRejected // by authorities
	}
	claim.FileReference = dto.FileReference

	claimAsBytes, err = json.Marshal(claim)
	if err != nil {
		return shim.Error(err.Error())
	}

	err = stub.PutState(key, claimAsBytes)
	if err != nil {
		return shim.Error(err.Error())
	}
	return shim.Success(nil)
}

func registerPatient(stub shim.ChaincodeStubInterface, args []string) pb.Response {
	if len(args) != 1 {
		return shim.Error("Invalid argument count.")
	}

	dto := struct {
		UUID      string `json:"uuid"`
		Username  string `json:"username"`
		Password  string `json:"password"`
		FirstName string `json:"first_name"`
		LastName  string `json:"last_name"`
	}{}

	err := json.Unmarshal([]byte(args[0]), &dto)
	if err != nil {
		return shim.Error(err.Error())
	}

	// Create new user if necessary
	var u user
	requestUserCreate := len(dto.Username) > 0 && len(dto.Password) > 0
	userKey, err := stub.CreateCompositeKey(prefixUser, []string{dto.Username})
	if requestUserCreate {
		// Check if a user with the same username exists
		if err != nil {
			return shim.Error(err.Error())
		}
		userAsBytes, _ := stub.GetState(userKey)
		if userAsBytes == nil {
			// Create new user
			u = user{
				Username:  dto.Username,
				Password:  dto.Password,
				FirstName: dto.FirstName,
				LastName:  dto.LastName,
			}
			// Persist the new user
			userAsBytes, err := json.Marshal(u)
			if err != nil {
				return shim.Error(err.Error())
			}
			err = stub.PutState(userKey, userAsBytes)
			if err != nil {
				return shim.Error(err.Error())
			}
		} else {
			// Parse the existing user
			err := json.Unmarshal(userAsBytes, &u)
			if err != nil {
				return shim.Error(err.Error())
			}
		}
	} else {
		// Validate if the user with the provided username exists
		userAsBytes, _ := stub.GetState(userKey)
		if userAsBytes == nil {
			return shim.Error("User with this username does not exist.")
		}
	}
	// Return success, if the new user has been created
	// (the user variable "u" should be blank)
	if !requestUserCreate {
		return shim.Success(nil)
	}

	response := struct {
		Username string `json:"username"`
		Password string `json:"password"`
	}{
		Username: u.Username,
		Password: u.Password,
	}
	responseAsBytes, err := json.Marshal(response)
	if err != nil {
		return shim.Error(err.Error())
	}
	return shim.Success(responseAsBytes)
}
