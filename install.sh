#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do
  sudo -n true
  sleep 60
  kill -0 "$$" || exit
done 2> /dev/null &

echo "Installing brew essentials"
bash ./scripts/brew.sh

echo "Installing zsh related things"
bash ./scripts/zsh.sh

echo "Installing AWS related things"
bash ./scripts/git.sh

echo "Finished setting up you new computer"