#!/bin/bash
RED=`tput bold && tput setaf 1`
GREEN=`tput bold && tput setaf 2`
YELLOW=`tput bold && tput setaf 3`
BLUE=`tput bold && tput setaf 4`
NC=`tput sgr0`
function RED(){
	echo -e "${RED}[-] ${1}${NC}"
}
function GREEN(){
	echo -e "${GREEN}[+] ${1}${NC}"
}
function YELLOW(){
	echo -e "${YELLOW}[!] ${1}${NC}"
}
function BLUE(){
	echo -e "${BLUE}[*] ${1}${NC}"
}
if [ $UID -ne 0 ]
then
	RED "You must run this script as root!" && echo
	exit
fi
BLUE "Running update and upgrade"
sudo apt-get update > /dev/null;
sudo apt-get upgrade -y > /dev/null;
GREEN "Installign apt-transport-https ca-certificates curl gnupg lsb-release wget"
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release wget > /dev/null;
YELLOW "Downloading dependency..."
GREEN "Downloading chrome"
wget -O latest-chrome.deb "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
GREEN "Downloading vscode"
wget -O latest-vscode.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
GREEN "Downloading sublime"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
GREEN "Downloading dotnet-core"
wget -O packages-microsoft-prod.deb https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb 
YELLOW "Adding APT source.lst entries"
GREEN "Adding docker dep"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88 -y
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" -y > /dev/null
YELLOW "Installing APT packages"
GREEN "Installing chrome packages"
sudo dpkg -i latest-chrome.deb > /dev/null;
GREEN "Installing vscode packages"
sudo dpkg -i latest-vscode.deb > /dev/null;
GREEN "Installing microsoft packages"
sudo dpkg -i packages-microsoft-prod.deb > /dev/null;
BLUE "Runnning update"
sudo apt-get update > /dev/null;
GREEN "Installing dotnet-sdk"
sudo apt-get install -y dotnet-sdk-5.0 aspnetcore-runtime-5.0 > /dev/null;
GREEN "Installing sublime-text"
sudo apt-get install -y sublime-text > /dev/null;
GREEN "Installing htop"
sudo apt-get install -y htop > /dev/null;
GREEN "Installing nodejs"
sudo apt-get install -y nodejs > /dev/null;
GREEN "Installing npm"
sudo apt-get install -y npm > /dev/null;
GREEN "Installing git"
sudo apt-get install -y git > /dev/null;
GREEN "Installing nmap"
sudo apt-get install -y nmap > /dev/null;
GREEN "Installing docker-ce"
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose > /dev/null;
GREEN "Installing binwalk"
sudo apt-get install -y binwalk > /dev/null;
GREEN "Installing hexedit"
sudo apt-get install -y hexedit > /dev/null;
GREEN "Installing ffmpeg"
sudo apt-get install -y ffmpeg > /dev/null;
GREEN "Installing cmake"
sudo apt-get install -y cmake > /dev/null;
YELLOW "Installing SNAP packages"
GREEN "Installing postman"
sudo snap install postman > /dev/null;
GREEN "Installing telegram"
sudo snap install telegram-desktop > /dev/null;
GREEN "Installing spotify"
sudo snap install spotify > /dev/null;

YELLOW "Installing NPM packages"
GREEN "Installing angular"
sudo npm install -g @angular/cli > /dev/null;
GREEN "Installing typescript"
sudo npm install -g typescript > /dev/null;
GREEN "Installing nodemon"
sudo npm install -g nodemon > /dev/null;
GREEN "Installing express-generator"
sudo npm install -g express-generator > /dev/null;
GREEN "Installing pm2"
sudo npm install -g pm2 > /dev/null;


YELLOW "Installing ZSH"
sudo apt install -y zsh
curl -Lo install.sh https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
sh install.sh
sudo chsh -s $(which zsh)
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions --depth 3
exit
