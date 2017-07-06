#! /bin/sh

echo \\napt update and upgrade...\\n;
sudo apt -y update;
sudo apt -y upgrade;

echo \\nInstalling vim...\\n;
sudo apt -y install vim;

echo \\nInstalling git...\\n;
sudo apt -y install git;

echo \\nInstalling curl...\\n;
sudo apt -y install curl;

echo \\nInstalling tmux...\\n;
sudo apt -y install tmux;

echo \\nInstalling haskell...\\n;
sudo apt -y install haskell-platform;

echo \\nInstalling fail2ban...\\n;
sudo apt -y install fail2ban;
sudo touch /etc/fail2ban/jail.local;
sudo tee -a /etc/fail2ban/jail.local << 'EOF'
[ssh]

enabled = true
port = ssh
filter = sshd
logpath = /var/log/auth.log
bantime = 2678400
banaction = iptables-allports
findtime = 604800
maxretry = 3
EOF

echo \\nInstalling and linking dotfiles...\\n;
cd ~;
git clone https://github.com/smhaggerty/.dotfiles.git;
rm .vimrc;
ln -s .dotfiles/.vimrc .vimrc;
rm -rf .vim;
ln -s .dotfiles/.vim .vim;

echo \\nAdding .ssh directory...\\n;
install -d -m 700 ~/.ssh;

echo \\nCleaning up...\\n;
sudo apt -y autoremove;
