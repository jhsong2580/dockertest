#!/bin/bash
deployName=$1

if [ ${#deployName} -eq 0 ];then
    echo './k8s.sh <DEPLOYNAME>'
    echo 'ex) ./k8s.sh mytestDeploy' 
    exit
fi


#getImage
docker pull thdwmdgns/mytest

#Make Container
winpty kubectl.exe run $1 --image=thdwmdgns/mytest --port=80

#Expose 
kubectl.exe expose deploy $1 --type="NodePort" --port 80

#Use 20Pod(scale)
kubectl.exe scale deploy $1 --replicas=20

echo 'myPods'
kubectl.exe get pods | grep $1

#Confirm Port to access server
echo ' '
echo ' '
echo 'access Port'
kubectl.exe describe svc/$1 | grep NodePort

echo ' '
echo ' '
echo 'kubectl get svc/$1'
kubectl.exe get svc/$1

