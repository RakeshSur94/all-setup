#STEP-1: INSTALLING GIT JAVA-1.8.0 MAVEN
#!/bin/bash

# Download and extract Maven 3.9.7
wget https://downloads.apache.org/maven/maven-3/3.8.8/binaries/apache-maven-3.8.8-bin.tar.gz
tar -xvzf apache-maven-3.8.8-bin.tar.gz
sudo mv apache-maven-3.8.8 /opt/maven


# Set up symbolic link
sudo ln -sfn /opt/apache-maven-3.9.7 /opt/maven

export M2_HOME=/opt/maven
export PATH=$M2_HOME/bin:$PATH

# Proceed with Jenkins installation (your existing script)
yum install git java-17-amazon-corretto-jmods.x86_64 -y


#STEP-2: GETTING THE REPO (jenkins.io --> download -- > redhat)
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

#STEP-3: DOWNLOAD JAVA11 AND JENKINS
yum install jenkins -y
#STEP-4: RESTARTING JENKINS (when we download service it will on stopped state)
systemctl start jenkins.service
systemctl status jenkins.service




