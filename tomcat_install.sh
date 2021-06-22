#!/bin/bash
#change directory
cd /opt/
#download java
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm
rpm -ivh jdk-8u131-linux-x64.rpm
#delete java rpm file
rm -fr jdk-8u131-linux-x64.rpm
#download tomcat
Wget https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.46/bin/apache-tomcat-9.0.46-windows-x64.zip
#unzip file
unzip apache-tomcat-9.0.46-windows-x64.zip
#rename directory name
mv apache-tomcat-9.0.46-windows-x64 tomcat
#change directory
cd tomcat/bin/
#change permissions
chmod 700 *
#start the tomcat
./startup.sh