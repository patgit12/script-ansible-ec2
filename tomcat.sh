#!/bin/bash
curl -s https://tomcat.apache.org/download-90.cgi > latesttom
#default_vers=$(grep -o 'https://dlcdn[^"]*\.[0-9][0-9]\.zip' /home/ec2-user/latesttom | grep -o '[0-9].[0-9].[0-9][0-9]'| grep -m 1 [0-9].[0-9].[0-9][0-9])
default_vers=$(grep -o 'https://dlcdn[^"]*\.[0-9]\{1,2\}\.zip' latesttom | grep -o '[0-9].[0-9].[0-9]\{1,2\}'| grep -m 1 '[0-9].[0-9].[0-9]\{1,2\}')
found=false
while [ "$found" = "false" ]; do
echo -n "what version are you planning to install [$default_vers]: "
read tomvers
url="https://archive.apache.org/dist/tomcat/tomcat-9/v$tomvers/bin/apache-tomcat-$tomvers.zip"

if [ ! -z "$tomvers" ] && [ "$tomvers" != "$default_vers" ]; then
   if curl -s --head --fail "$url" > /dev/null 2>&1; then
      found=true
   else
   echo "WRONG Version !!!!"    
   fi
else
   found=true
fi

done
if [ -z "$tomvers" ] || [ "$tomvers" = "$default_vers" ]; then
   link="https://dlcdn.apache.org/tomcat/tomcat-9/v$default_vers/bin/apache-tomcat-$default_vers.zip"

else
   link=https://archive.apache.org/dist/tomcat/tomcat-9/v$tomvers/bin/apache-tomcat-$tomvers.zip 
fi

echo  -n "what's your desired username: "
read username

echo -n "provide your password please: "
read password

echo -n "desired role [ manager-gui manager-script separate each role by a coma]: "
read roles

ansible-playbook createc2.yaml
ansible-playbook -i awsinvent.aws_ec2.yaml deploytomcat.yaml --extra-vars "link=$link username=$username password=$password myrole=$roles"