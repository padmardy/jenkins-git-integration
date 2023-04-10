cd target
tar -czf jenkins-integration.tar.gz *.war

scp "jenkins-integration.tar.gz" ubuntu@<IP address of tomcat>:/home/ubuntu/
	echo ">>>>>>>>>>>>>>>>>>>>>>>>>>copying tar build done<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
	ssh ubuntu@<9000> "
	  tar -xvf jenkins-integration.tar.gz
      rm -rf *.tar.tz
      sudo systemctl stop tomcat.service
      rm -rf /home/ubuntu/tomcat/webapps/*.war
      cp -r jenkins-intergration.war /home/ubuntu/tomcat/webapps/
      sudo systemctl start tomcat.service
	"
