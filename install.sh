#!/bin/bash
cd ~
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
wait
brew install git
brew cask install iterm2

# Node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
nvm install node

# Other dev tools
brew cask install gitkraken
brew cask install postman

# React Native
brew install watchman
npm install -g react-native-cli
brew update && brew cask install react-native-debugger

# Zsh
source $(dirname "$0")/install-zsh.sh