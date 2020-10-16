#! /bin/bash

brew install npm
brew install npx
npm intall tree

npm install git

git config --global user.name "desibabua"
git config --global user.email "kumarayush074@gmail.com"
git config --global pull.rebase true
git config --global alias.unstage rebase

git config --global filter.tabspace.smudge 'unexpand --tabs=2 --first-only'
git config --global filter.tabspace.clean 'expand --tabs=2 --initial'