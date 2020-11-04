#! /bin/bash
sudo apt install git
sudo apt install python3
sudo apt install python3-pip
sudo apt install curl
git clone https://github.com/JamesT1992/InstallJenkinsLinux.git
curl https://get.docker.com | sudo bash
sudo usermod -aG docker $(whoami)
sudo apt update
sudo apt install -y curl jq
version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
sudo curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
curl https://get.docker.com | sudo bash
sudo usermod -aG docker $USER
sudo docker run -d -p 8081:8081 -p 8082:8082 -p 8083:8083 --name nexus sonatype/nexus3 
sudo docker exec nexus cat nexus-data/admin.password
