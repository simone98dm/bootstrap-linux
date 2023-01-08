#!/bin/bash
RED=`tput bold && tput setaf 1`
GREEN=`tput bold && tput setaf 2`
YELLOW=`tput bold && tput setaf 3`
BLUE=`tput bold && tput setaf 4`
NC=`tput sgr0`

function RED(){
	echo -e "${RED}[X] ${1}${NC}"
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

function RUNCMD(){
    if [ $2 ]
    then
        /bin/bash -c "${1} > /dev/null"
    else
        /bin/bash -c "${1}"
    fi
}

BLUE "Running update and upgrade"
RUNCMD "sudo apt update -y" true
RUNCMD "sudo apt upgrade -y"
RUNCMD "sudo sudo apt install -y apt-transport-https ca-certificates curl gnupg lsb-release wget"
#----------------------------------------------

BLUE "Add APT repositories"

GREEN "Add Docker CE"
RUNCMD "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -"
RUNCMD "sudo add-apt-repository \"deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable\""
RUNCMD "wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb"
RUNCMD "sudo dpkg -i packages-microsoft-prod.deb"
RUNCMD "rm packages-microsoft-prod.deb"
RUNCMD "sudo add-apt-repository \"deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main\""
RUNCMD "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash"
#----------------------------------------------

BLUE "Installing packages"
GREEN "Downloading and installing Google Chrome"
RUNCMD "wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
RUNCMD "sudo dpkg -i google-chrome-stable_current_amd64.deb"
GREEN "Installing docker"
RUNCMD "sudo apt install docker-ce docker-ce-cli containerd.io"

GREEN "Downloading DOTNET CORE"
RUNCMD "sudo apt install -y dotnet-sdk-6.0"
GREEN "Installing htop"
RUNCMD "sudo apt install htop -y" true
GREEN "Installing git"
RUNCMD "sudo apt install git -y" true
GREEN "Installing nmap"
RUNCMD "sudo apt install nmap -y" true
GREEN "Installing binwalk"
RUNCMD "sudo apt install binwalk -y" true
GREEN "Installing hexedit"
RUNCMD "sudo apt install hexedit -y" true
GREEN "Installing ffmpeg"
RUNCMD "sudo apt install ffmpeg -y" true
GREEN "Installing jq"
RUNCMD "sudo apt install jq -y" true
GREEN "Installing micro"
RUNCMD "sudo apt install micro -y" true
GREEN "Installing vlc"
RUNCMD "sudo apt install vlc -y" true
GREEN "Installing gnome-tweak-tool"
RUNCMD "sudo apt install gnome-tweak-tool -y" true
GREEN "Installing net-tools"
RUNCMD "sudo apt install net-tools -y" true
GREEN "Installing openjdk-11-jre openjdk-11-jdk"
RUNCMD "sudo apt install openjdk-11-jre openjdk-11-jdk -y" true

GREEN "Installing Spotify"
RUNCMD "sudo snap install spotify"
GREEN "Installing Bitwarden"
RUNCMD "sudo snap install bitwarden"
GREEN "Installing Postman"
RUNCMD "sudo snap install postman"
GREEN "Installing Telegram"
RUNCMD "sudo snap install telegram-desktop"

GREEN "Installing oh-my-zsh"
RUNCMD "sh -c \"$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)\""
