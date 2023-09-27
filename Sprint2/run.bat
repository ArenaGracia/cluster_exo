git pull origin main

set TOMCAT_PATH="C:/Program Files/Apache Software Foundation/Tomcat 9.0/webapps"
set TOMCAT_EXE="C:/Program Files/Apache Software Foundation/Tomcat 9.0/bin"
set INITIAL_PATH="E:/L3/S5/Mr Naina/Cluster/Sprint2"


@REM  Compile all java file
javac -parameters -cp ./WEB-INF/classes;./WEB-INF/lib/connection.jar;./WEB-INF/lib/formulaire.jar;./WEB-INF/lib/agregation.jar;./WEB-INF/lib/framework.jar -d ./WEB-INF/classes/ ./src/model/client/*.java ./src/model/url/*.java
javac -parameters -cp ./WEB-INF/classes;./WEB-INF/lib/connection.jar;./WEB-INF/lib/formulaire.jar;./WEB-INF/lib/agregation.jar;./WEB-INF/lib/framework.jar -d ./WEB-INF/classes/ ./src/controller/user/*.java

@REM Convert into .war
jar -cvf "sprint2_cluster.war" *
copy "sprint2_cluster.war" %TOMCAT_PATH%

cd %TOMCAT_EXE%
C:
Tomcat9.exe
cd 

@REM java -cp ./WEB-INF/lib/connection.jar;./WEB-INF/classes model.program.Program