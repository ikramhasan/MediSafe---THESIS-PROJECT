#!/bin/bash
set -e

CORE_PEER_MSPCONFIGPATH=/peers/ordererOrganizations/orderer-org/orderers/orderer0/msp CORE_PEER_LOCALMSPID="OrdererMSP" peer channel create -o orderer0:7050 -c default -f /peers/orderer/channel.tx --tls true --cafile /peers/orderer/localMspConfig/cacerts/ordererOrg.pem

CORE_PEER_MSPCONFIGPATH=/peers/insurancePeer/localMspConfig CORE_PEER_ADDRESS=insurance-peer:7051 CORE_PEER_LOCALMSPID=InsuranceOrgMSP CORE_PEER_TLS_ROOTCERT_FILE=/peers/insurancePeer/localMspConfig/cacerts/insuranceOrg.pem peer channel join -b default.block

CORE_PEER_MSPCONFIGPATH=/peers/doctorPeer/localMspConfig CORE_PEER_ADDRESS=doctor-peer:7051 CORE_PEER_LOCALMSPID=ShopOrgMSP CORE_PEER_TLS_ROOTCERT_FILE=/peers/doctorPeer/localMspConfig/cacerts/shopOrg.pem peer channel join -b default.block

CORE_PEER_MSPCONFIGPATH=/peers/pharmaPeer/localMspConfig CORE_PEER_ADDRESS=repairservice-peer:7051 CORE_PEER_LOCALMSPID=PharmaOrgMSP CORE_PEER_TLS_ROOTCERT_FILE=/peers/pharmaPeer/localMspConfig/cacerts/pharmaOrg.pem peer channel join -b default.block

## Don't use TLS
# CORE_PEER_MSPCONFIGPATH=/peers/orderer/localMspConfig CORE_PEER_LOCALMSPID="OrdererMSP" peer channel create -o orderer0:7050 -c default -f /peers/orderer/channel.tx
#
# CORE_PEER_MSPCONFIGPATH=/peers/insurancePeer/localMspConfig CORE_PEER_ADDRESS=insurance-peer:7051 CORE_PEER_LOCALMSPID=InsuranceOrgMSP peer channel join -b default.block
#
# CORE_PEER_MSPCONFIGPATH=/peers/doctorPeer/localMspConfig CORE_PEER_ADDRESS=doctor-peer:7051 CORE_PEER_LOCALMSPID=ShopOrgMSP peer channel join -b default.block
#
# CORE_PEER_MSPCONFIGPATH=/peers/pharmaPeer/localMspConfig CORE_PEER_ADDRESS=repairservice-peer:7051 CORE_PEER_LOCALMSPID=PharmaOrgMSP peer channel join -b default.block
