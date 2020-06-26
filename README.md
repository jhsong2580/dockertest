# dockertest
Git Clone 
-  git clone https://github.com/jhsong2580/dockertest.git

Git Add 
- git add * 

Git Commit 
- git commit 

Git push 
- git push 



BUILD IMAGE
- docker build -t thdwmdgns/mytest .



RUN IMAGE & Port Forwarding
- winpty docker run -it --name mytest_u1 -p 8888:80 thdwmdgns/mytest
![RESULT](./image/docker_run_ps_a.PNG)


ATTACH IMAGE
- winpty docker exec -it mytest_u1 bash

INSTALL nginx in ubuntu(already installed by Dockerfile) 
1. apt update -y 
2. apt install nginx -y

![RESULT](./image/docker_update.PNG)


localhost:8888 
![RESULT](./image/localhost_8888.PNG)


