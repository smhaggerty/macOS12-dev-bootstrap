#! /bin/bash

cd ~;
mdkir temp;
cd temp;
sudo apt update;
sudo apt -y upgrade;
sudo apt install -y vim;
sudo apt install -y git;
sudo apt install -y nodejs;

# Install npm and setup global install directory
sudo apt install -y npm;
mkdir ~/.npm-global;
npm config set prefix '~/.npm-global';
echo "" >> ~/.profile
echo "export PATH=~/.npm-global/bin:$PATH" >> ~/.profile;
echo "" >> ~/.profile
source ~/.profile;

npm install http-server -g;
sudo apt install -y python3;

# Install RVM
sudo apt-get install software-properties-common;
sudo apt-add-repository -y ppa:rael-gc/rvm;
sudo apt-get update;
sudo apt-get install -y rvm;

cd ~;
rm -rf temp;
echo "run command 'usermod -aG rvm shane' as root, then check 'run command as login shell' in gnome-terminal profile preferences to finish rvm setup"
