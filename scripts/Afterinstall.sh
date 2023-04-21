#!/bin/bash
cp -R *.war /home/ubuntu/tomcat/webapps/
sudo systemctl start tomcat.service
##
