
run : | install
	mvn spring-boot:run

test :
    reset
    mvn test

deploy : | install
	#sudo cp target/diplomaiptal.war /opt/tomcat/webapps/
	git add . && git commit -m "${MSG}" && git push -u origin master
install :
	reset
	mvn clean package

