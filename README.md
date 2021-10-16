# Devops-tooling
DevOps Tooling Scripts TL;DR 
```console
git clone https://github.com/openMF/devops-tooling.git
cd devops-tooling/scripts/
chmod 775 *
sudo ./01.java_installation.sh 
sudo ./02.jenkins_installation.sh 
```

Requirements
============
* Ubuntu 20.04 LTS Server
* Jenkins 2.303
* Docker CE 20.10.9
* Java Azul Zulu JDK 11

Java Installation 
=================

Install the dependencies
```console
sudo apt-get -q update
sudo apt-get -yq install gnupg curl 
```
Add Azul's public key 
```console
sudo apt-key adv \
  --keyserver hkp://keyserver.ubuntu.com:80 \
  --recv-keys 0xB1998361219BD9C9
 ```
Download and install the package that adds the Azul APT repository to the list of sources 
```console
curl -O https://cdn.azul.com/zulu/bin/zulu-repo_1.0.0-2_all.deb
```
Install the package
```console
sudo apt-get install ./zulu-repo_1.0.0-2_all.deb
```
Update the package sources
```console
sudo apt-get update
```
Install Azul Zulu JDK 11
```console
sudo apt-get install zulu11-jdk
```
Verify the Java version
```console
java -version
```
Jenkins Installation
====================
Download the Jenkins Key and Add it to the keyring
```console
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
```
Add the Jenkins APT repository to the list of sources 
```console
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
```
Update the package sources
```console
sudo apt-get update
```
Install Jenkins
```console
sudo apt-get install jenkins
```
Register the Jenkins service
```console
sudo systemctl daemon-reload
```
Start the Jenkins service
```console
sudo systemctl start jenkins
```
Check the status of the Jenkins service
```console
sudo systemctl status jenkins
```

Fineract Docker Image Creation
==============================
Login into the Container Repository Account 
```console
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
```
Clone the repository and run the Docker commands for the Fineract 
```console
git clone https://github.com/apache/fineract.git
cd fineract
docker build -f Dockerfile -t org.apache.fineract  . 
docker tag org.apache.fineract  fineract/org.apache.fineract
docker push fineract/org.apache.fineract
```
After this actions you can test the pulling command
```console
docker pull fineract/org.apache.fineract
```
Mifos Docker Image Creation
===========================

Login into the Container Repository Account 
```console
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
```
Clone the repository and run the Docker commands for the Community App
```console
git clone https://github.com/openMF/community-app.git
cd community-app
docker build -f Dockerfile -t org.mifos.community-app  . 
docker tag org.mifos.community-app  mifos/org.mifos.community-app
docker push mifos/org.mifos.community-app
```
After this actions you can test the pulling command
```console
docker pull mifos/org.mifos.community-app
```

