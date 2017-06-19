#! /bin/sh

echo \\nInstalling Homebrew…\\n
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";

echo \\nInstalliing vim…\\n;
brew install vim;

echo \\nInstalling curl…\\n;
brew install curl;

echo \\nInstalling wget…\\n;
brew install wget;

echo \\nInstalling python…\\n;
brew install python;
brew install python3;

echo \\nInstalling pip (requires sudo)...\\n;
sudo easy_install pip;

echo \\nInstalling Atom…\\n;
wget https://github.com/atom/atom/releases/download/v1.18.0/atom-mac.zip;
unzip atom-mac.zip;
mv Atom.app /Applications;
rm atom-mac.zip
