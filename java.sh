apt-get update -qq

apt-get install libc6-i386 -y

update-alternatives --install      /usr/bin/java java /opt/he-cloud-stack/jdk1.7.0/bin/java 2
update-alternatives --install      /usr/bin/jar jar /opt/he-cloud-stack/jdk1.7.0/bin/jar 2
update-alternatives --install      /usr/bin/javac javac /opt/he-cloud-stack/jdk1.7.0/bin/javac 2
update-alternatives --set jar     /opt/he-cloud-stack/jdk1.7.0/bin/jar
update-alternatives --set javac   /opt/he-cloud-stack/jdk1.7.0/bin/javac

java -version

sed -i -e '$a\JAVA_HOME=/opt/he-cloud-stack/jdk1.7.0/' /etc/profile
sed -i -e '$a\export JAVA_HOME' /etc/profile
sed -i -e  '$a\PATH=$JAVA_HOME/bin:$PATH' /etc/profile
sed -i -e  '$a\export PATH'  /etc/profile

