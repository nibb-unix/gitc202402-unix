#!/bin/sh

cd
sudo xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/nibb/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew update
brew tap brewsci/bio
brew install -v fastqc
echo "======== prep_brew FINISHED ========"
