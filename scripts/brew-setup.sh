#!/usr/bin/env bash

# If you don't want an app below it's fine just to remove that line.

# Check for Homebrew,
# Install if we don't have it
# Force the deletion of potential old homebrew installation
rm -rf /opt/homebrew
if test ! $(which brew); then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME/.zprofile"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

## Install cask
brew install cask

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# languages
brew install zsh
brew install node
brew install n
brew install pyenv
brew install python

# Install more recent versions of some OS X tools.
brew install vim
brew install grep
brew install openssh
brew install screen
brew reinstall curl

# Install the tools
brew install --cask raycast
brew install --cask dozer
brew install starship
brew install leapp

# Fonts
brew tap homebrew/cask-fonts
brew install --cask font-fira-code

# Remove outdated versions from the cellar.
brew cleanup