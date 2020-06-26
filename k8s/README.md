# dockertest/k8s

docker pull thdwmdgns/mytest
- Get image by Docker HUB 

make Container & map service port 80 
- winpty kubectl.exe run mytest1 --image=thdwmdgns/mytest --port=80

scale with 20 pods 
- kubectl.exe scale deploy mytest1 --replicas=20


confirm 
- kubectl.exe get pods | grep mytest1



