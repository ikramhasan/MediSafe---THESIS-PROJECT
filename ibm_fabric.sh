#!/bin/sh
set -e

echo
echo "#################################################################"
echo "#######        Generating cryptographic material       ##########"
echo "#################################################################"
PROJPATH=$(pwd)
CLIPATH=$PROJPATH/cli/peers
ORDERERS=$CLIPATH/ordererOrganizations
PEERS=$CLIPATH/peerOrganizations

rm -rf $CLIPATH
$PROJPATH/cryptogen generate --config=$PROJPATH/crypto-config.yaml --output=$CLIPATH

sh generate-cfgtx.sh

# rm -rf $PROJPATH/{orderer,insurancePeer,patientPeer,pharmaPeer,doctorPeer}/crypto
rm -rf $PROJPATH/orderer/crypto
rm -rf $PROJPATH/insurancePeer/crypto
rm -rf $PROJPATH/patientPeer/crypto
rm -rf $PROJPATH/pharmaPeer/crypto
rm -rf $PROJPATH/doctorPeer/crypto
# mkdir $PROJPATH/{orderer,insurancePeer,patientPeer,pharmaPeer,doctorPeer}/crypto
mkdir $PROJPATH/orderer/crypto
mkdir $PROJPATH/insurancePeer/crypto
mkdir $PROJPATH/patientPeer/crypto
mkdir $PROJPATH/pharmaPeer/crypto
mkdir $PROJPATH/doctorPeer/crypto
# cp -r $ORDERERS/orderer-org/orderers/orderer0/{msp,tls} $PROJPATH/orderer/crypto
cp -r $ORDERERS/orderer-org/orderers/orderer0/msp $PROJPATH/orderer/crypto
cp -r $ORDERERS/orderer-org/orderers/orderer0/tls $PROJPATH/orderer/crypto
# cp -r $PEERS/insurance-org/peers/insurance-peer/{msp,tls} $PROJPATH/insurancePeer/crypto
cp -r $PEERS/insurance-org/peers/insurance-peer/msp $PROJPATH/insurancePeer/crypto
cp -r $PEERS/insurance-org/peers/insurance-peer/tls $PROJPATH/insurancePeer/crypto
# cp -r $PEERS/patient-org/peers/patient-peer/{msp,tls} $PROJPATH/patientPeer/crypto
cp -r $PEERS/patient-org/peers/patient-peer/msp $PROJPATH/patientPeer/crypto
cp -r $PEERS/patient-org/peers/patient-peer/tls $PROJPATH/patientPeer/crypto
# cp -r $PEERS/pharma-org/peers/pharma-peer/{msp,tls} $PROJPATH/pharmaPeer/crypto
cp -r $PEERS/pharma-org/peers/pharma-peer/msp $PROJPATH/pharmaPeer/crypto
cp -r $PEERS/pharma-org/peers/pharma-peer/tls $PROJPATH/pharmaPeer/crypto
# cp -r $PEERS/doctor-org/peers/doctor-peer/{msp,tls} $PROJPATH/doctorPeer/crypto
cp -r $PEERS/doctor-org/peers/doctor-peer/msp $PROJPATH/doctorPeer/crypto
cp -r $PEERS/doctor-org/peers/doctor-peer/tls $PROJPATH/doctorPeer/crypto
cp $CLIPATH/genesis.block $PROJPATH/orderer/crypto/

INSURANCECAPATH=$PROJPATH/insuranceCA
POLICECAPATH=$PROJPATH/policeCA
REPAIRSHOPCAPATH=$PROJPATH/pharmaCA
SHOPCAPATH=$PROJPATH/shopCA

# rm -rf {$INSURANCECAPATH,$POLICECAPATH,$REPAIRSHOPCAPATH,$SHOPCAPATH}/{ca,tls}
rm -rf $INSURANCECAPATH/ca
rm -rf $POLICECAPATH/ca
rm -rf $REPAIRSHOPCAPATH/ca
rm -rf $SHOPCAPATH/ca
rm -rf $INSURANCECAPATH/tls
rm -rf $POLICECAPATH/tls
rm -rf $REPAIRSHOPCAPATH/tls
rm -rf $SHOPCAPATH/tls
# mkdir -p {$INSURANCECAPATH,$POLICECAPATH,$REPAIRSHOPCAPATH,$SHOPCAPATH}/{ca,tls}
mkdir -p $INSURANCECAPATH/ca
mkdir -p $POLICECAPATH/ca
mkdir -p $REPAIRSHOPCAPATH/ca
mkdir -p $SHOPCAPATH/ca
mkdir -p $INSURANCECAPATH/tls
mkdir -p $POLICECAPATH/tls
mkdir -p $REPAIRSHOPCAPATH/tls
mkdir -p $SHOPCAPATH/tls
cp $PEERS/insurance-org/ca/* $INSURANCECAPATH/ca
cp $PEERS/insurance-org/tlsca/* $INSURANCECAPATH/tls
mv $INSURANCECAPATH/ca/*_sk $INSURANCECAPATH/ca/key.pem
mv $INSURANCECAPATH/ca/*-cert.pem $INSURANCECAPATH/ca/cert.pem
mv $INSURANCECAPATH/tls/*_sk $INSURANCECAPATH/tls/key.pem
mv $INSURANCECAPATH/tls/*-cert.pem $INSURANCECAPATH/tls/cert.pem

cp $PEERS/patient-org/ca/* $POLICECAPATH/ca
cp $PEERS/patient-org/tlsca/* $POLICECAPATH/tls
mv $POLICECAPATH/ca/*_sk $POLICECAPATH/ca/key.pem
mv $POLICECAPATH/ca/*-cert.pem $POLICECAPATH/ca/cert.pem
mv $POLICECAPATH/tls/*_sk $POLICECAPATH/tls/key.pem
mv $POLICECAPATH/tls/*-cert.pem $POLICECAPATH/tls/cert.pem

cp $PEERS/pharma-org/ca/* $REPAIRSHOPCAPATH/ca
cp $PEERS/pharma-org/tlsca/* $REPAIRSHOPCAPATH/tls
mv $REPAIRSHOPCAPATH/ca/*_sk $REPAIRSHOPCAPATH/ca/key.pem
mv $REPAIRSHOPCAPATH/ca/*-cert.pem $REPAIRSHOPCAPATH/ca/cert.pem
mv $REPAIRSHOPCAPATH/tls/*_sk $REPAIRSHOPCAPATH/tls/key.pem
mv $REPAIRSHOPCAPATH/tls/*-cert.pem $REPAIRSHOPCAPATH/tls/cert.pem

cp $PEERS/doctor-org/ca/* $SHOPCAPATH/ca
cp $PEERS/doctor-org/tlsca/* $SHOPCAPATH/tls
mv $SHOPCAPATH/ca/*_sk $SHOPCAPATH/ca/key.pem
mv $SHOPCAPATH/ca/*-cert.pem $SHOPCAPATH/ca/cert.pem
mv $SHOPCAPATH/tls/*_sk $SHOPCAPATH/tls/key.pem
mv $SHOPCAPATH/tls/*-cert.pem $SHOPCAPATH/tls/cert.pem

WEBCERTS=$PROJPATH/web/certs
rm -rf $WEBCERTS
mkdir -p $WEBCERTS
cp $PROJPATH/orderer/crypto/tls/ca.crt $WEBCERTS/ordererOrg.pem
cp $PROJPATH/insurancePeer/crypto/tls/ca.crt $WEBCERTS/insuranceOrg.pem
cp $PROJPATH/patientPeer/crypto/tls/ca.crt $WEBCERTS/policeOrg.pem
cp $PROJPATH/pharmaPeer/crypto/tls/ca.crt $WEBCERTS/pharmaOrg.pem
cp $PROJPATH/doctorPeer/crypto/tls/ca.crt $WEBCERTS/shopOrg.pem
cp $PEERS/insurance-org/users/Admin@insurance-org/msp/keystore/* $WEBCERTS/Admin@insurance-org-key.pem
cp $PEERS/insurance-org/users/Admin@insurance-org/msp/signcerts/* $WEBCERTS/
cp $PEERS/doctor-org/users/Admin@doctor-org/msp/keystore/* $WEBCERTS/Admin@doctor-org-key.pem
cp $PEERS/doctor-org/users/Admin@doctor-org/msp/signcerts/* $WEBCERTS/
cp $PEERS/patient-org/users/Admin@patient-org/msp/keystore/* $WEBCERTS/Admin@patient-org-key.pem
cp $PEERS/patient-org/users/Admin@patient-org/msp/signcerts/* $WEBCERTS/
cp $PEERS/pharma-org/users/Admin@pharma-org/msp/keystore/* $WEBCERTS/Admin@pharma-org-key.pem
cp $PEERS/pharma-org/users/Admin@pharma-org/msp/signcerts/* $WEBCERTS/