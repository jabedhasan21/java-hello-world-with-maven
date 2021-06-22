#!/bin/bash
#install maven in /opt
cd /opt
#download the zip
wget https://mirrors.estointernet.in/apache/maven/maven-3/3.8.1/binaries/apache-maven-3.8.1-bin.zip
#extract 
unzip apache-maven-3.8.1-bin.zip
#rename
mv apache-maven-3.8.1 maven38
#change the permissions
chmod -R 700 maven38
#delte the zip
rm -f apache-maven-3.8.1-bin.zip