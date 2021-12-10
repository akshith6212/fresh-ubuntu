sudo apt-get update 
sudo apt-get upgrade
sudo apt-get install wget

# Telegram
cd ~/Downloads
mkdir zip 
cd zip
wget https://telegram.org/dl/desktop/linux
tar -xJvf linux
cd 'linux (1)'
sudo mv Telegram /opt/telegram
sudo ln -sf /opt/telegram/Telegram /usr/bin/telegram

# Joplin
cd ~/Downloads
mkdir scripts
cd scripts
sudo apt-get update
wget -O - 'https://raw.githubusercontent.com/laurent22/joplin/master/Joplin_install_and_update.sh' | bash

# Bitwarden
cd ~/Downloads
mkdir deb
cd deb
wget -O Bitwarden.deb 'https://vault.bitwarden.com/download/?app=desktop&platform=linux&variant=deb'
sudo apt-get update 
sudo apt-get install ./Bitwarden.deb

# Sublime text
wget -qO - 'https://download.sublimetext.com/sublimehq-pub.gpg' | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# Vscode
cd ~/Downloads/deb/
wget -O code.deb 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64'
sudo apt-get update
sudo apt-get install ./code.deb

# Typora
wget -qO - 'https://typora.io/linux/public-key.asc' | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update
sudo apt-get install typora

# Brave
sudo apt-get install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt-get update 
sudo apt-get install brave-browser

# Discord
cd ~/Downloads/deb
wget -O discord.deb 'https://discord.com/api/download?platform=linux&format=deb'
sudo apt-get update 
sudo apt-get install ./discord.deb

# Flameshot
sudo apt-get install flameshot

# Nomacs
sudo apt-get install nomacs

# OBS Studio
sudo apt-get install obs-studio

# ONLY Office
wget -O onlyoffice.deb 'https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb'
sudo apt-get update 
sudo apt-get install ./onlyoffice.deb

# Openboard
wget -O openboard.deb 'https://github.com/OpenBoard-org/OpenBoard/releases/download/v1.6.1/openboard_ubuntu_20.04_1.6.1_amd64.deb'
sudo apt-get update 
sudo apt-get install ./openboard.deb

# PDF arranger
sudo add-apt-repository ppa:linuxuprising/apps
sudo apt-get update 
sudo apt-get install pdfarranger

# vlc
sudo apt-get install vlc

# Virtual Box
sudo apt-get install virtualbox virtualbox-ext-pack

# Wireshark
sudo add-apt-repository ppa:wireshark-dev/stable
sudo apt-get update 
sudo apt-get install wireshark

exit