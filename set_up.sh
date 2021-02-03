#! /bin/bash

brew install npm
brew install npx
brew install bat
npm intall tree

npm install git

git config --global user.name "Ayush"
git config --global user.email "ayush.kumar@thoughtworks.com"
git config --global pull.rebase true
git config --global alias.unstage rebase

git config --global filter.tabspace.smudge 'unexpand --tabs=2 --first-only'
git config --global filter.tabspace.clean 'expand --tabs=2 --initial'

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# restart
p10k configure
