# workspace-mac
Remember to look through the scripts and adjust to preference. If there is something you don't want installed it's enough to remove it. The first parts are about the scripts and automation and the end of the guide is about the apps you have to manually install.

To install:
```bash
git clone git@github.com:InavL/workspace-mac.git
cd workspace-mac
bash install.sh
```

Might have to make the script runable:
```
chmod +x install.sh
```

## Automated

### brew-setup.sh
Installs [Homebrew](https://brew.sh/) and other necessitites. Zsh, python and vim is mainly reinstalled to have control over updates instead of depending on OS upgrades.

* zsh
* node
* [n](https://github.com/tj/n)
* pyenv
* python
* vim
* [raycast](https://www.raycast.com/)
* [dozer](https://github.com/Mortennn/Dozer)
* [starship](https://starship.rs/) - Haven't played with this yet but looks promising
* [cask fonts and Fira Code Font](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/font-info.md)

### zsh-setup.sh
Installs Oh My Zsh, reasonable plugins and copies my `.zshrc`.

* [Oh My Zsh](https://ohmyz.sh/)
* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
* [fast-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
* [autoupdate](https://github.com/TamCore/autoupdate-oh-my-zsh-plugins)

### aws-setup.sh
Installs the [AWS Cli](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html) and [AWSume](https://awsu.me/general/quickstart.html).

## Applications (Not installed via scripts)
These need to be manually downloaded and installed. Some of them have brew versions but I prefer the autoupdates of these.

* [Xcode](https://apps.apple.com/us/app/xcode/id497799835?mt=12)
* [Firefox](https://www.mozilla.org/en-US/firefox/new/)
* [iTerm2](https://iterm2.com/)
* [1Password](https://1password.com/downloads/mac/)
* [VS Code](https://code.visualstudio.com/)
* [Rectangle Pro](https://rectangleapp.com/pro)
* [Google Drive](https://www.google.com/drive/download/)
* [Slack](https://slack.com/)'
* [Discord](https://discord.com/)
* [Postman](https://www.postman.com/)
* [TickTick](https://www.ticktick.com/)
* [Obsidian](https://obsidian.md/)
* [Node.js](https://nodejs.org/en/download/)

## Browser setup

* Bitwarden (Personal Use)
* Decentraleyes
* Disconnect
* DuckDuckGo Privacy Essentials
* Enhancer for YouTube
* Ghostery
* Privacy Badger
* Reddit Enhancement Suite
* Sideberry
* uBlock Origin

# Notes

Heavily inspired by [Kinoute's setup](https://github.com/kinoute/macos-setup)