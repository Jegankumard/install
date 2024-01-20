cd /opt
sudo wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz
##sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.80/bin/apache-tomcat-9.0.80.tar.gz (Another link )
sudo tar -xvf apache-tomcat-9.0.65.tar.gz

cd /opt/apache-tomcat-9.0.65/conf
## vi server.xml   > to change port

## sudo vi tomcat-users.xml  > add user

## <user username="admin" password="admin1234" roles="admin-gui, manager-gui"/>
sudo ln -s /opt/apache-tomcat-9.0.65/bin/startup.sh /usr/bin/startTomcat
sudo ln -s /opt/apache-tomcat-9.0.65/bin/shutdown.sh /usr/bin/stopTomcat
sudo stopTomcat
sudo startTomcat


