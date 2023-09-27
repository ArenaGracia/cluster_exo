javac -parameters -cp /home/koloina/Sprint2/WEB-INF/lib/connection.jar:/home/koloina/Sprint2/WEB-INF/lib/framework.jar -d /home/koloina/Sprint2/WEB-INF/classes/ /home/koloina/Sprint2/src/model/client/*.java  /home/koloina/Sprint2/src/model/url/*.java
javac -parameters -cp /home/koloina/Sprint2/WEB-INF/lib/connection.jar:/home/koloina/Sprint2/WEB-INF/lib/framework.jar -d /home/koloina/Sprint2/WEB-INF/classes/ /home/koloina/Sprint2/src/controller/user/*.java

jar -cf /home/koloina/apache-tomcat-8.5.81/webapps/sprint2_cluster.war .


/home/koloina/apache-tomcat-8.5.81/bin/shutdown.sh
/home/koloina/apache-tomcat-8.5.81/bin/startup.sh

