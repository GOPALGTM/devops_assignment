# devops_assignment
 
apt-get update

apt install docker.io

docker build . -t myapp:latest

docker run -p 80:80 -d myapp:latest
