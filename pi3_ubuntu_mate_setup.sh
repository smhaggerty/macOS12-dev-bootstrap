#! /bin/sh

echo \\apt update and upgrade...\\n;
sudo apt update;
sudo apt upgrade;

echo \\nInstalling vim...\\n;
sudo apt install vim;

echo \\nInstalling git...\\n;
sudo apt install git;

echo \\nInstalling curl...\\n;
sudo apt install curl;

echo \\nInstalling tmux\\n;
sudo apt install tmux;

echo \\nInstalling haskell…\\n;
sudo apt install haskell-platform;

echo \\nInstalling chromium...\\n;
sudo apt install chromium-browser;

echo \\nInstalling and linking dotfiles\\n;
cd ~;
git clone https://github.com/smhaggerty/.dotfiles.git;
rm .vimrc;
ln -s .dotfiles/.vimrc .vimrc;
rm -rf .vim;
ln -s .dotfiles/.vim .vim;
