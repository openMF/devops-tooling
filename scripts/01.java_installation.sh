#/bin/bash
sudo apt-get -q update
sudo apt-get -yq install gnupg curl 

# add Azul's public key
sudo apt-key adv \
  --keyserver hkp://keyserver.ubuntu.com:80 \
  --recv-keys 0xB1998361219BD9C9

# download and install the package that adds 
# the Azul APT repository to the list of sources 
curl -O https://cdn.azul.com/zulu/bin/zulu-repo_1.0.0-2_all.deb

# install the package
sudo apt-get -yq install ./zulu-repo_1.0.0-2_all.deb

# update the package sources
sudo apt-get update

# install Azul Zulu JDK 11
sudo apt-get -yq install zulu11-jdk

#Verify Java Version
java -version
