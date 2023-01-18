package main

import (
	"encoding/json"
	"time"

	"errors"
	"strings"

	"github.com/hyperledger/fabric/core/chaincode/shim"
)

// Key consists of prefix + UUID of the contract type
type ContractType struct {
	ShopType        string  `json:"shop_type"`
	FormulaPerDay   string  `json:"formula_per_day"`
	MaxSumInsured   float32 `json:"max_sum_insured"`
	TheftInsured    bool    `json:"theft_insured"`
	Description     string  `json:"description"`
	Conditions      string  `json:"conditions"`
	Active          bool    `json:"active"`
	MinDurationDays int32   `json:"min_duration_days"`
	MaxDurationDays int32   `json:"max_duration_days"`
}

// Key consists of prefix + username + UUID of the contract
type Contract struct {
	Username         string    `json:"username"`
	Condition        string    `json:"condition"`
	Attachments      []string  `json:"attachments"`
	Medicines        []item    `json:"medicines"`
	Date             time.Time `json:"date"`
	Void             bool      `json:"void"`
	ContractTypeUUID string    `json:"contract_type_uuid"`
	ClaimIndex       []string  `json:"claim_index,omitempty"`
}

type Prescription struct {
	Username         string    `json:"username"`
	Medicine         string    `json:"medicine"`
	Condition        string    `json:"condition"`
	When             string    `json:"when"`
	Date             time.Time `json:"date"`
	Void             bool      `json:"void"`
	ContractTypeUUID string    `json:"contract_type_uuid"`
	ClaimIndex       []string  `json:"claim_index,omitempty"`
}

// Entity not persisted on its own
type item struct {
	ID          int32  `json:"id"`
	Name        string `json:"name"`
	Dose        string `json:"dose"`
	Time        string `json:"time"`
	Description string `json:"description"`
	SerialNo    string `json:"serial_no"`
}

// Key consists of prefix + UUID of the contract + UUID of the claim
type Claim struct {
	ContractUUID  string      `json:"contract_uuid"`
	Date          time.Time   `json:"date"`
	Description   string      `json:"description"`
	IsAllowed     bool        `json:"is_allowed"`
	Status        ClaimStatus `json:"status"`
	Reimbursable  float32     `json:"reimbursable"`
	Repaired      bool        `json:"repaired"`
	FileReference string      `json:"file_reference"`
}

// The claim status indicates how the claim should be treated
type ClaimStatus int8

const (
	// The claims status is unknown
	ClaimStatusUnknown ClaimStatus = iota
	// The claim is new
	ClaimStatusNew
	// The claim has been rejected (either by the insurer, or by authorities
	ClaimStatusRejected
	// The item is up for repairs, or has been repaired
	ClaimStatusRepair
	// The customer should be reimbursed, or has already been
	ClaimStatusReimbursement
	// The theft of the item has been confirmed by authorities
	ClaimStatusTheftConfirmed
)

func (s *ClaimStatus) UnmarshalJSON(b []byte) error {
	var value string
	if err := json.Unmarshal(b, &value); err != nil {
		return err
	}

	switch strings.ToUpper(value) {
	default:
		*s = ClaimStatusUnknown
	case "N":
		*s = ClaimStatusNew
	case "J":
		*s = ClaimStatusRejected
	case "R":
		*s = ClaimStatusRepair
	case "F":
		*s = ClaimStatusReimbursement
	case "P":
		*s = ClaimStatusTheftConfirmed
	}

	return nil
}

func (s ClaimStatus) MarshalJSON() ([]byte, error) {
	var value string

	switch s {
	default:
		fallthrough
	case ClaimStatusUnknown:
		value = ""
	case ClaimStatusNew:
		value = "N"
	case ClaimStatusRejected:
		value = "J"
	case ClaimStatusRepair:
		value = "R"
	case ClaimStatusReimbursement:
		value = "F"
	case ClaimStatusTheftConfirmed:
		value = "P"
	}

	return json.Marshal(value)
}

// Key consists of prefix + username
type user struct {
	Username      string   `json:"username"`
	Password      string   `json:"password"`
	FirstName     string   `json:"first_name"`
	LastName      string   `json:"last_name"`
	ContractIndex []string `json:"contracts"`
}

// Key consists of prefix + UUID fo the repair order
type repairOrder struct {
	ClaimUUID    string `json:"claim_uuid"`
	ContractUUID string `json:"contract_uuid"`
	Medicines    []item `json:"medicines"`
	Ready        bool   `json:"ready"`
}

func (u *user) Contacts(stub shim.ChaincodeStubInterface) []Contract {
	contracts := make([]Contract, 0)

	// for each contractID in user.ContractIndex
	for _, contractID := range u.ContractIndex {

		c := &Contract{}

		// get contract
		contractAsBytes, err := stub.GetState(contractID)
		if err != nil {
			//res := "Failed to get state for " + contractID
			return nil
		}

		// parse contract
		err = json.Unmarshal(contractAsBytes, c)
		if err != nil {
			//res := "Failed to parse contract"
			return nil
		}

		// append to the contracts array
		contracts = append(contracts, *c)
	}

	return contracts
}

func (c *Contract) Claims(stub shim.ChaincodeStubInterface) ([]Claim, error) {
	claims := []Claim{}

	for _, claimKey := range c.ClaimIndex {
		claim := Claim{}

		claimAsBytes, err := stub.GetState(claimKey)
		if err != nil {
			return nil, err
		}

		err = json.Unmarshal(claimAsBytes, &claim)
		if err != nil {
			return nil, err
		}

		claims = append(claims, claim)
	}

	return claims, nil
}

func (c *Contract) User(stub shim.ChaincodeStubInterface) (*user, error) {
	user := &user{}

	if len(c.Username) == 0 {
		return nil, errors.New("Invalid user name in contract.")
	}

	userKey, err := stub.CreateCompositeKey(prefixUser, []string{c.Username})
	if err != nil {
		return nil, err
	}

	userAsBytes, err := stub.GetState(userKey)
	if err != nil {
		return nil, err
	}
	err = json.Unmarshal(userAsBytes, user)
	if err != nil {
		return nil, err
	}

	return user, nil
}

func (c *Claim) Contract(stub shim.ChaincodeStubInterface) (*Contract, error) {
	if len(c.ContractUUID) == 0 {
		return nil, nil
	}

	resultsIterator, err := stub.GetStateByPartialCompositeKey(prefixContract, []string{})
	if err != nil {
		return nil, err
	}
	defer resultsIterator.Close()

	for resultsIterator.HasNext() {
		kvResult, err := resultsIterator.Next()
		if err != nil {
			return nil, err
		}

		_, keyParams, err := stub.SplitCompositeKey(kvResult.Key)
		if len(keyParams) != 2 {
			continue
		}

		if keyParams[1] == c.ContractUUID {
			contract := &Contract{}
			err := json.Unmarshal(kvResult.Value, contract)
			if err != nil {
				return nil, err
			}
			return contract, nil
		}
	}
	return nil, nil
}

// func (c *Claim) Prescription(stub shim.ChaincodeStubInterface) (*Prescription, error) {
// 	if len(c.ContractUUID) == 0 {
// 		return nil, nil
// 	}

// 	resultsIterator, err := stub.GetStateByPartialCompositeKey(prefixPrescription, []string{})
// 	if err != nil {
// 		return nil, err
// 	}
// 	defer resultsIterator.Close()

// 	for resultsIterator.HasNext() {
// 		kvResult, err := resultsIterator.Next()
// 		if err != nil {
// 			return nil, err
// 		}

// 		_, keyParams, err := stub.SplitCompositeKey(kvResult.Key)
// 		if len(keyParams) != 2 {
// 			continue
// 		}

// 		if keyParams[1] == c.ContractUUID {
// 			prescription := &Prescription{}
// 			err := json.Unmarshal(kvResult.Value, prescription)
// 			if err != nil {
// 				return nil, err
// 			}
// 			return prescription, nil
// 		}
// 	}
// 	return nil, nil
// }
