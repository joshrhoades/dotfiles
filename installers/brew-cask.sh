#!/bin/bash

# Let's install some goddamned apps, people! WOOOO! Saucy.

# Install Caskroom, it's the `lics baby
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
# Install apptrap first so we can cleanly remove anything that is added afterwards
echo ":: BREW:CASKS INSTALLING APPS ::"
apps=(
	apptrap
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
	flash-player
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
	silverlight
	skype
	slack
	sublime-text
	textmate
	the-unarchiver
	totalterminal
	tower
	transmission
	transmit
	virtualbox
)

brew cask install "${apps[@]}"

# Install fonts
brew tap caskroom/fonts
echo ":: BREW:CASKS: INSTALLING FONTS ::"
fonts=(
	font-input
	font-droid-sans
	font-roboto
	font-source-sans-pro
	font-awesome-terminal-fonts
	font-fontawesome
	font-octicons
	font-icomoon
	font-montserrat
	font-lato
	font-noto-sans
	font-open-sans
)
brew cask install "${fonts[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
echo ":: BREW:CASKS: UPDATING QUICK LOOK ::"
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# Remove outdated versions from the cellar
echo ":: BREW:CASKS: CLEANING UP ::"
brew cask cleanup
