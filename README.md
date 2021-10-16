# Devops-tooling
DevOps Tooling Scripts

Requirements
============
* Java >= 11 (Azul Zulu JVM)
* Jenkins >=2
* MySQL 5.7

Java Installation 
=================
Install the dependencies
`sudo apt-get -q update`
`sudo apt-get -yq install gnupg curl` 
Add Azul's public key 
`sudo apt-key adv \
  --keyserver hkp://keyserver.ubuntu.com:80 \
  --recv-keys 0xB1998361219BD9C9`
Download and install the package that adds the Azul APT repository to the list of sources 
`curl -O https://cdn.azul.com/zulu/bin/zulu-repo_1.0.0-2_all.deb`
Install the package
`sudo apt-get install ./zulu-repo_1.0.0-2_all.deb`
Update the package sources
`sudo apt-get update`
Install Azul Zulu JDK 11
`sudo apt-get install zulu11-jdk`
Verify the Java version
`java -version`
