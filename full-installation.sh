#!/bin/bash

# Define colors...
RED=`tput bold && tput setaf 1`
GREEN=`tput bold && tput setaf 2`
YELLOW=`tput bold && tput setaf 3`
BLUE=`tput bold && tput setaf 4`
NC=`tput sgr0`

function RED(){
	echo -e "\n${RED}${1}${NC}"
}
function GREEN(){
	echo -e "\n${GREEN}${1}${NC}"
}
function YELLOW(){
	echo -e "\n${YELLOW}${1}${NC}"
}
function BLUE(){
	echo -e "\n${BLUE}${1}${NC}"
}

# Testing if root...
if [ $UID -ne 0 ]
then
	RED "You must run this script as root!" && echo
	exit
fi

sudo apt update

BLUE "Installing curl..."
sudo apt install -y curl

sudo apt install -y software-properties-common apt-transport-https wget

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" -y

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88 -y
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" -y

wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb



GREEN "Installing using APT"

BLUE "Installing git..."
sudo apt install -y git

BLUE "Installing Sublime Text..." # according to https://www.sublimetext.com/docs/3/linux_repositories.html-
sudo apt install -y sublime-text

BLUE "Installing tilix..."
sudo apt install -y tilix

BLUE "Installing pip..."
sudo apt install -y python-pip

BLUE "Installing nmap..."
sudo apt install -y nmap

BLUE "Installing docker..."
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose

BLUE "Installing Wireshark..."
sudo apt install -y wireshark

BLUE "Installing VSCode..."
sudo apt install -y code

BLUE "Installing Binwalk..."
sudo apt install -y binwalk

BLUE "Installing Tesseract..."
sudo apt install -y tesseract-ocr

BLUE "Installing hexedit..."
sudo apt install -y hexedit	

BLUE "Installing Python pwntools..."
sudo pip install pwntools

BLUE "Installing Node..."
sudo apt install -y node

BLUE "Installing NPM"
sudo apt install -y npm

BLUE "Installing nikto..."
sudo apt install -y nikto

BLUE "Installing qrencode..."
sudo apt install -y qrencode

BLUE "Installing pdfcrack..."
sudo apt install -y pdfcrack

BLUE "Installing Virtualbox..."
sudo apt install -y virtualbox-qt

BLUE "Installing fcrackzip..."
sudo apt install -y fcrackzip

BLUE "Installing unrar..."
sudo apt install -y unrar

BLUE "Installing steghide..."
sudo apt install -y steghide

BLUE "Installing ffmpeg..."
sudo apt install -y ffmpeg

BLUE "Installing cmake..."
sudo apt install -y cmake

BLUE "Installing tcpflow..."
sudo apt install -y tcpflow

BLUE "Installing dotnet"
sudo apt install -y dotnet-sdk-2.2

BLUE "Installing postman"
sudo snap install postman

BLUE "Installing telegram"
sudo snap install telegram-desktop

BLUE "Installing chromium"
sudo snap install chromium

BLUE "Installing opera"
sudo snap install opera

BLUE "Installing fast"
sudo snap install fast

BLUE "Installing spotify"
sudo snap install spotify

BLUE "Installing john"
sudo snap install john-the-ripper

BLUE "Installing riseup"
sudo snap install riseup-vpn --classic

BLUE "Installing webstorm"
sudo snap install webstorm --classic

BLUE "Installing datagrip"
sudo snap install datagrip --classic

BLUE "Installing rider"
sudo snap install rider --classic

BLUE "Installing zsh and set it as default"
sudo apt install -y zsh
curl -Lo install.sh https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
sh install.sh
sudo chsh -s $(which zsh)
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions --depth 3
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions --depth 3
exit



GREEN "Installing NPM packages"

BLUE "Installing @angular/cli"
sudo npm install -g @angular/cli

BLUE "Installing typescript"
sudo npm install -g typescript

BLUE "Installing nodemon"
sudo npm install -g nodemon

BLUE "Installing pm2"
sudo npm install -g pm2

BLUE "Installing npm-update"
sudo npm install -g npm-update


GREEN "DONE!"
sudo apt update 
sudo apt upgrade -y 
sudo apt autoremove
sudo reboot