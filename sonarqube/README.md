## Sonarqube docker image (Linux):

### Install docker
```
sudo apt-get update
sudo apt-get install docker.io -y
sudo usermod -aG docker $USER   #my case is ubuntu
newgrp docker
sudo chmod 777 /var/run/docker.sock
```
### run sonarqube image
```
docker run -d --name sonar -p 9000:9000 sonarqube:lts-community
```
### access using <ec2-public-ip:9000>

```
username: admin
password: admin
```