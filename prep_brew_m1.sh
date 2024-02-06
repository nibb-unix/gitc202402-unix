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
wget https://cloud.r-project.org/bin/macosx/big-sur-arm64/base/R-4.3.2-arm64.pkg
