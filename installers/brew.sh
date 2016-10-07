#!/bin/bash
# source @link https://github.com/nicksp/dotfiles/blob/master/install/brew.sh
# Installs Homebrew and some of the common dependencies needed/desired for software development

echo ":: BREW: SETUP ::"
# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo ":: BREW: INSTALLING ::"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap homebrew/versions
brew tap homebrew/dupes

# Make sure we’re using the latest Homebrew
echo ":: BREW: UPDATING ::"
brew update

# Upgrade any already-installed formulae
echo ":: BREW: UPDATING CURRENTLY INSTALLED FORMULAE ::"
brew upgrade --all

apps=(
	bash-completion2
	coreutils
	dnsmasq
	ffmpeg --with-libvpx
	findutils
	geoip
	git
	git-extras
	gnu-sed --with-default-names
	grep --with-default-names
	highlight
	homebrew/completions/brew-cask-completion
	homebrew/dupes/grep
	homebrew/dupes/openssh
	htop
	hub
	markdown
	mongodb
	moreutils
	nvm
	ponysay
	python
	source-highlight
	speedtest_cli
	thefuck
	wget
	wifi-password
	zsh
	zsh-autosuggestions
	zsh-syntax-highlighting
)
echo ":: BREW: INSTALLING NEW FORMULAE ::"
brew install "${apps[@]}"

# Remove outdated versions from the cellar
echo ":: BREW: CLEANING UP ::"
brew cleanup

echo ":: BREW: COMPLETE ::"
