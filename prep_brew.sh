#!/bin/sh

cd
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew tap brewsci/bio
brew install -v fastqc
echo "======== prep_brew FINISHED ========"
