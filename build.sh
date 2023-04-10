cd target
tar -czf jenkins-integration.tar.gz *.war

scp "jenkins-integration.tar.gz" ubuntu@<65.0.26.104>:/home/ubuntu/
	echo ">>>>>>>>>>>>>>>>>>>>>>>>>>copying tar build done<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
	ssh ubuntu@<65.0.26.104> "
	  tar -xvf jenkins-integration.tar.gz
      rm -rf *.tar.tz
      sudo systemctl stop tomcat.service
      rm -rf /home/ubuntu/tomcat/webapps/*.war
      cp -r jenkins-intergration.war /home/ubuntu/tomcat/webapps/
      sudo systemctl start tomcat.service
	"
