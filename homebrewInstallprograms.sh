#! /bin/bash

#install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#wait for homebrew to install
sleep 5

#install homebrew casks - https://formulae.brew.sh/cask/
#install github desktop
#install visual studio code
#install google chrome
brew install --cask github
brew install --cask visual-studio-code
brew install --cask google-chrome
#install alt-tab
brew install --cask alt-tab
#install karabiner-elements
brew install --cask karabiner-elements
