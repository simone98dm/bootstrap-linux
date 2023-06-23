#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install --cask discord
brew install --cask burp-suite
brew install --cask iterm2
brew install --cask sublime-text
brew install --cask vlc
brew install --cask brave-browser
brew install --cask veracrypt
brew install --cask beekeeper-studio
brew install --cask github
brew install --cask keepassxc
brew install --cask postman
brew install --cask macfuse
brew install --cask mucommander
brew install --cask visual-studio-code
brew install --cask raspberry-pi-imager
brew install --cask mucommander
brew install --cask app-cleaner

brew install gource
brew install ffmpeg
brew install imagemagick
brew install htop
brew install micro
brew install youtube-dl
brew install zsh
brew install ffmpeg
brew install lsd
brew install tokei
brew install wget
brew install nvm

brew tap homebrew/cask-fonts
brew install font-hack-nerd-font

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && chsh -s $(which zsh)

mkdir -p ~/tmp && cd tmp/
git clone git@github.com:oskarkrawczyk/honukai-iterm-zsh.git

defaults write NSGlobalDomain AppleShowAllExtensions -bool true
