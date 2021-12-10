sudo apt update && sudo apt upgrade
sudo apt install wget

# Eagle mode
cd ~/Downloads/deb
wget -O eaglemode.deb http://downloads.sourceforge.net/eaglemode/eaglemode_0.95.1-1_amd64.deb
sudo apt install ./eaglemode.deb

# Figma for Linux
cd ~/Downloads/deb
wget -O figma-linux.deb https://github.com/Figma-Linux/figma-linux/releases/download/v0.9.3/figma-linux_0.9.3_linux_amd64.deb
sudo apt install ./figma-linux.deb

# Filezilla
sudo apt-get update && sudo apt-get install filezilla

# GIMP
sudo add-apt-repository ppa:ubuntuhandbook1/gimp
sudo apt update && sudo apt install gimp

# Signal
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\ sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop

# Whatsapp for linux
cd ~/Downloads/deb
wget -O whatsappforlinux.deb https://github.com/eneshecan/whatsapp-for-linux/releases/download/v1.3.1/whatsapp-for-linux_1.3.1_amd64.deb
sudo apt install ./whatsappforlinux.deb

# Zenmap
# Install nmap first
sudo apt update && sudo apt install nmap
sudo apt install alien
cd ~/Downloads/deb
wget -O zenmap.rpm https://nmap.org/dist/nmap-7.92-1.x86_64.rpm
sudo alien zenmap.rpm
sudo apt install ./zenmap.deb