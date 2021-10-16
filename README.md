# Devops-tooling
DevOps Tooling Scripts

Requirements
============
* Java >= 11 (Azul Zulu JVM)
* Jenkins >=2
* MySQL 5.7

Java Installation 
=================

1. Install the dependencies
```console
sudo apt-get -q update
sudo apt-get -yq install gnupg curl
```
2. Add Azul's public key 
```console
sudo apt-key adv \
  --keyserver hkp://keyserver.ubuntu.com:80 \
  --recv-keys 0xB1998361219BD9C9
```  
3. Download and install the package that adds the Azul APT repository to the list of sources 
```console
curl -O https://cdn.azul.com/zulu/bin/zulu-repo_1.0.0-2_all.deb
```
4. Install the package
```console
sudo apt-get install ./zulu-repo_1.0.0-2_all.deb
```
5. Update the package sources
```console
sudo apt-get update
```
6. Install Azul Zulu JDK 11
```console
sudo apt-get install zulu11-jdk
```
7. Verify the Java version
```console
java -version
```
