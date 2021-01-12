#!/bin/bash/
yum update -y
#Download java 
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm
#Enable key
rpm -ivh jdk-8u131-linux-x64.rpm
#Install java
yum install java
#download jenkins
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
#enable the repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
#install jenkins
yum install jenkins -y
#start jenkins
systemctl start jenkins
