# dotfiles for Josh Rhoades
This is my collection of dotfiles for use across my OSX machines. This should be cloned to the Home directory (`~/`), resulting in a path of `~/dotfiles`.

## Installation
```sh
$ git clone https://github.com/joshrhoades/dotfiles.git ~/dotfiles
$ cd ~/dotfiles
$ chmod +x setup.sh
```

Do not execute the `setup.sh` script yet, there are some basic things that need to be done that cannot be (or in some cases, are not yet) scripted:

## Total Terminal

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

## License

The code is available under the [MIT license](LICENSE).
