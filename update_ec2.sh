#!/bin/bash

#Updating system in aws-EC2
echo "Updating System in AMI AWS_EC2"
sleep 4
sudo apt update && sudo apt upgrade -y
echo
echo "Installing utils packages"
sleep 4
sudo apt install -y curl git net-tools vim wget iputils-ping traceroute vim-gtk3 vim-gui-common vim-athena
echo
echo "Installing python"
sleep 4
sudo apt install python -y
echo
echo "Installing Docker"
sleep 4
echo "Importing necessary dependencies"
sleep 2
sudo apt install -y apt-transport-https ca-certificates software-properties-common
echo
echo echo "Importing the repository's GPG key"
sleep 2
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo
echo "Adding repository's Docker APT in your system"
sleep 2
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
echo
echo "Udating your System"
sleep 2
sudo apt update
echo
echo "Installing the latest version of Docker CE (Community Edition)"
sleep 2
sudo apt install -y docker-ce
echo
echo "To Docker service will start automatically"
sleep 2
sudo systemctl enable docker
echo
echo "Setting your user with sudo"
sleep 2
sudo usermod -aG docker $USER
sudo chown $USER:$USER /usr/lib/docker
sudo chown $USER:docker /var/run/docker.sock
echo
echo "Download image hello-world"
sleep 2
docker pull hello-world
echo
echo "Installing Docker Compose"
echo "Download the docker compose binary"
sleep 4
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
echo
echo "Applying and executing permissions to the compose binary"
sleep 2
sudo chmod +x /usr/local/bin/docker-compose
sudo chown $USER /usr/local/bin/docker-compose
echo
echo "Your docker-compose version"
sleep 4
docker-compose --version
echo
echo "Installing nvm for nodeJS"
sleep 4
echo "Making clone to the repository nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
echo
echo "Setting the environment variables"
sleep 2
alias nvmnodejs='export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm'
echo
echo "Installing Yarn"
sleep 4
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn -y
sudo apt update && sudo apt install --n-install-recommends yarn
echo "Your yarn version"
yarn --version
echo
echo
echo "Setting source ~/.bashrc"
echo "And install nodejs"
sleep 2