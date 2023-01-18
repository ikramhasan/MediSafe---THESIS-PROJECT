#!/bin/bash

docker rm -f $(docker ps -aq)
images=( web insurance-peer orderer patient-peer pharma-ca doctor-ca patient-ca insurance-ca pharma-peer doctor-peer )
for i in "${images[@]}"
do
	echo Removing image : $i
  docker rmi -f $i
done

#docker rmi -f $(docker images | grep none)
images=( dev-pharma-peer dev-patient-peer dev-insurance-peer dev-doctor-peer)
for i in "${images[@]}"
do
	echo Removing image : $i
  docker rmi -f $(docker images | grep $i )
done
