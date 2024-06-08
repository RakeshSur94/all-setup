wget https://archive.apache.org/dist/maven/maven-3/3.8.5/binaries/apache-maven-3.8.5-bin.tar.gz
tar xzf apache-maven-3.8.5-bin.tar.gz
sudo mv apache-maven-3.8.5 /opt/maven
export M2_HOME=/opt/maven
export PATH=$M2_HOME/bin:$PATH
source ~/.bashrc
