#!/bin/sh

cd
sudo xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew tap brewsci/bio
brew install -v fastqc
brew install -v wget
echo "======== prep_brew FINISHED ========"
wget https://cloud.r-project.org/bin/macosx/big-sur-x86_64/base/R-4.3.2-x86_64.pkg
sudo installer -pkg R-4.3.2-x86_64.pkg -target /Volumes/Macintosh\ HD
