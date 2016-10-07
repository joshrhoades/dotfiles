#!/bin/bash

# Let's install some goddamned apps, people! WOOOO! Saucy.

# Install Caskroom, it's the `lics baby
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
apps=(
	1password
	aerial
	alfred
	beyond-compare
	charles
	cloud
	colloquy
	dropbox
	evernote
	fantastical
	firefox
	firefoxnightly
	glimmerblocker
	google-chrome
	google-chrome-canary
	hipchat
	istat-menus
	kaleidoscope
	lastfm
	livereload
	macdown
	malwarebytes-anti-malware
	moom
	nocturne
	omnifocus
	omnigraffle
	omniplan
	skype
	slack
	sublime-text
	textmate
	the-unarchiver
	totalterminal
	tower
	transmit
	virtualbox
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
