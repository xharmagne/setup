#!/bin/bash
cd ~

# Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
wait

brew install git
brew cask install iterm2
brew cask install visual-studio-code

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
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
curl https://raw.githubusercontent.com/xharmagne/setup/master/.dotfiles/zsh/.zshrc > .zshrc

curl -o '~/Library/Fonts/Meslo LG M Regular for Powerline.ttf' https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf?raw=true
