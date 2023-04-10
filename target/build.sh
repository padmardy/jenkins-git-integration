tar -czf jenkins-integration.tar.gz *.war

<<<<<<< HEAD
scp "jenkins-integration.tar.gz" ubuntu@<IP address of tomcat>:/home/ubuntu/
	echo ">>>>>>>>>>>>>>>>>>>>>>>>>>copying tar build done<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
	ssh ubuntu@<IP Address of tomcat server> "
=======
scp "jenkins-integration.tar.gz" ubuntu@<65.0.26.104>:/home/ubuntu/
	echo ">>>>>>>>>>>>>>>>>>>>>>>>>>copying tar build done<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
	ssh ubuntu@<65.0.26.104> "
>>>>>>> refs/remotes/origin/master
	  tar -xvf jenkins-integration.tar.gz
      rm -rf *.tar.tz
      sudo systemctl stop tomcat.service
      rm -rf /home/ubuntu/tomcat/webapps/*.war
      cp -r jenkins-intergration.war /home/ubuntu/tomcat/webapps/
      sudo systemctl start tomcat.service
	"
