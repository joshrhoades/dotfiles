# dotfiles for Josh Rhoades
This is my collection of dotfiles for use across my OSX machines. This should be cloned to the Home directory (`~/`), resulting in a path of `~/dotfiles`.

## Installation
```sh
$ git clone https://github.com/joshrhoades/dotfiles.git ~/dotfiles
$ cd ~/dotfiles
$ chmod +x setup.sh
```

Do not execute the `setup.sh` script yet, there are some basic things that need to be done that cannot be (or in some cases, are not yet) scripted:

### Total Terminal
[Total Terminal](http://totalterminal.binaryage.com/) is an absolutely fantastic terminal tweak that allows Visor-like (quake-style) slide-down of terminal with a global shortcut (I use ``⌘ + ` ``), on the currently active screen.

Unfortunately, with the introduction of SIP by ~~douchebags at Apple~~ _#AppleBags_, it killed off the usage of this for many people who did not want to risk tweaking SIP, and so the guys at Binary Age sunsetted support. But it is still awesome, still works on latest OSX, and there is still no viable replacement (iTerm 2 can fake its way into almost doing this, but it is pretty janky and iTerm 2 can suck it regardless).

Total Terminal can work just fine, however, by simply enabling SIP without debug, but this requires booting into Recovery Mode (Restart → hold `⌘ + R` until the Apple logo appears → open Terminal from Utilities in the menubar)
```
csrutil enable --without debug
```

Then restart as normal. Total Terminal will now work with SIP pretty much still intact. Up to you.

More detailed [SIP instructions](http://totalterminal.binaryage.com/#sip).

### Font Installation
Various custom fonts are used in this dotfiles, and not all of them can be reliably installed via CLI/bash due to Font Book issues. These will need to be manually installed.

- __Input Mono__: used for terminal/CLI, and is included in this dotfiles as [fonts/Input-Font.zip](fonts/Input-Font.zip). See more about [Input Mono](http://input.fontbureau.com/)
- __Operator Mono__: used for Sublime Text 3. This is a premium font and is not included in this dotfiles. See more about [Operator Mono](http://www.typography.com/blog/introducing-operator)
- __powerlevel9k oh-my-zsh theme fonts__: To properly style the prompt for zsh, this requires a bit of work.
    + Install fonts from [awesome-terminal-fonts](https://github.com/gabrielelana/awesome-terminal-fonts)
        * Specifically __Font Awesome__, __Octicons__, and __Pomicons__.
    + Follow the [install instructions](https://github.com/gabrielelana/awesome-terminal-fonts/wiki/OS-X) for awesome-terminal-fonts. NOTE: This requires disabling SIP temporarily.

## Screenshot Examples

### Sublime Text 3
![Sublime Text 3](https://raw.github.com/joshrhoades/dotfiles/master/screenshots/sublime-example.png)

### Terminal
![Terminal.app](https://raw.github.com/joshrhoades/dotfiles/master/screenshots/terminal-example.png)

## Usage
Once installed, execute the following from CLI
```sh
$ cd ~/dotfiles
$ ./setup.sh
```

## Resources
Good resources for using dotfiles for yourself:

- [GitHub dotfiles ~/](http://dotfiles.github.com/)
- [Mathias’s dotfiles](https://github.com/mathiasbynens/dotfiles)
- [Paul's dotfiles](https://github.com/paulirish/dotfiles)
- [Nick P's dotfiles](https://github.com/nicksp/dotfiles)
- [nicknisi's dotfiles](https://github.com/nicknisi/dotfiles)

## License

The code is available under the [MIT license](LICENSE).
