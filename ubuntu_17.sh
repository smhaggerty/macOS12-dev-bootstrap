#! /bin/bash

cd ~;
mkdir temp;
cd temp;
sudo apt update;
sudo apt -y upgrade;
sudo apt install -y vim;
sudo apt install -y git;
git config --global user.email "shanehaggerty@umail.ucsb.edu";
git config --global user.name "Shane Haggerty";
sudo apt install -y curl;
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
sudo apt install -y python3-pip;
sudo apt install -y golang-go;

# Install RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB;
\curl -sSL https://get.rvm.io | bash -s stable --ruby;

cd ~;
rm -rf temp;
sudo apt purge -y ubuntu-web-launchers;
sudo apt -y autoremove; 
echo "";
echo "Check 'run command as login shell' in gnome-terminal profile preferences to finish rvm setup"

