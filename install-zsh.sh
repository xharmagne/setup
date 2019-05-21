#!/bin/bash
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
curl https://raw.githubusercontent.com/xharmagne/setup/master/.dotfiles/zsh/.zshrc > .zshrc

curl -o '~/Library/Fonts/Meslo LG M Regular for Powerline.ttf' https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf?raw=true