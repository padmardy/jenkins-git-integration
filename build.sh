cd target
tar -czf jenkins-integration.tar.gz *.war

scp "jenkins-integration.tar.gz" ubuntu@<IP address of tomcat>:/home/ubuntu/
	echo ">>>>>>>>>>>>>>>>>>>>>>>>>>copying tar build done<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
	ssh ubuntu@<9000> "
	  tar -xvf jenkins-integration.tar.gz
	" 

scp "${REPO}-$ENV.tar.gz" ubuntu@<>:/home/ubuntu/tomcat/webapps
	echo ">>>>>>>>>>>>>>>>>>>>>>>>>>copying tar build done<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
	ssh ubuntu@<ip> "
	  cd target			  
	"
