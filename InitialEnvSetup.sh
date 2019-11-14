#Install Python 3.6
sudo apt-get update -y
sudo apt-get install python3.6 -y

#Install Git
#sudo apt-get update
sudo apt-get install git -y

#Install the docker repos
#sudo apt-get update
sudo apt-get install \
  apt-transport-https -y\
  ca-certificates -y\
  curl -y\
  software-properties-common -y
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#Confirm the fingerprint
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"
#Install Docker community edition
#sudo apt-get update -y
sudo apt-get install docker-ce -y
#Add docker python package
sudo apt-get install python-pip -y
sudo pip3 install docker
