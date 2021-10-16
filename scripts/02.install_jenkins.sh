#!/bin/bash
#On Debian and Debian-based distributions like Ubuntu you can install Jenkins through apt.
#Long Term Support release 
#A LTS (Long-Term Support) release is chosen every 12 weeks from the stream of regular releases as the stable release for that time period. 
#It can be installed from the debian-stable apt repository.

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
sudo apt-get -q update
sudo apt-get -yq install jenkins

#Start Jenkins
#Register the Jenkins service with the command:
sudo systemctl daemon-reload

#You can start the Jenkins service with the command:
sudo systemctl start jenkins

#You can check the status of the Jenkins service using the command:
sudo systemctl status jenkins
