# Devops-tooling
DevOps Tooling Scripts

Requirements
============
* Ubuntu 20.04 LTS Server
* Jenkins 2.316
* Docker CE 20.10.9
* Java Azul Zulu JDK 11

Java Installation 
=================

a. Install the dependencies
```console
sudo apt-get -q update
sudo apt-get -yq install gnupg curl
```
b. Add Azul's public key 
```console
sudo apt-key adv \
  --keyserver hkp://keyserver.ubuntu.com:80 \
  --recv-keys 0xB1998361219BD9C9
```  
c. Download and install the package that adds the Azul APT repository to the list of sources 
```console
curl -O https://cdn.azul.com/zulu/bin/zulu-repo_1.0.0-2_all.deb
```
d. Install the package
```console
sudo apt-get install ./zulu-repo_1.0.0-2_all.deb
```
e. Update the package sources
```console
sudo apt-get update
```
f. Install Azul Zulu JDK 11
```console
sudo apt-get install zulu11-jdk
```
g. Verify the Java version
```console
java -version
```
