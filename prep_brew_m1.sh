#!/bin/sh

cd
sudo xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/nibb/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew update
brew tap brewsci/bio
brew install -v fastqc
brew install -v wget
echo "======== prep_brew FINISHED ========"
wget https://cloud.r-project.org/bin/macosx/big-sur-arm64/base/R-4.3.2-arm64.pkg
sudo installer -pkg R-4.3.2-arm64.pkg -target /Volumes/Macintosh\ HD
