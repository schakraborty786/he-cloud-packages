###########JAVA INSTALLATION###################3333333




cd /opt

git clone he-cloud-pacakges 


cd he-cloud-pacakges

tar xzvf jdk-7-linux-i586.tar.gz

tar xzvf scala-2.11.7.tgz

#java.sh scala.sh verify.sh


#lets create a directory to setup stack
mkdir /opt/he-cloud-stack

#now move jdk and scala in he-cloud-stack directory


mv jdk1.7.0        /opt/he-cloud-stack/jdk1.7.0
mv  scala-2.11.7   /opt/he-cloud-stack/scala


#now lets switch  to HE-CLOUD-AUTOMATION DIRECTORY to execute java and scala installation and configuration script



#java installation script to install java from source 

bash java.sh


#scala installation

bash scala.sh


#postgres installation

bash post.sh

cd /opt/

git clone frontend

cd frontend

sbt clean

sbt compile

sbt pacakge

./run


post build

bash verify.sh





















