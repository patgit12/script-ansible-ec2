#Create Amazon Linux EC2 T2.micro Instance.
# open port 8080 ..etc
# change hostname to tomcat
sudo hostnamectl set-hostname tomcat
#sudo su - ec2-user
cd /opt
sudo yum install git wget java-11 unzip -y
sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.80/bin/apache-tomcat-9.0.80.zip
### Downloading latest tomcat ######
sudo unzip apache-tomcat-9.0.80.zip
sudo rm -rf apache-tomcat-9.0.80.zip
### rename tomcat for good naming convention
sudo mv apache-tomcat-9.0.80 tomcat9  
### assign executable permissions to the tomcat home directory
sudo chmod 777 -R /opt/tomcat9
sudo chown ec2-user -R /opt/tomcat9
### start tomcat
sh /opt/tomcat9/bin/startup.sh
# create a soft link to start and stop tomcat
sudo ln -s /opt/tomcat9/bin/startup.sh /usr/bin/starttomcat
sudo ln -s /opt/tomcat9/bin/shutdown.sh /usr/bin/stoptomcat
starttomcat
sudo su ec2-user