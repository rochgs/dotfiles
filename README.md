## Files overview

- `.emacs.commits`: Emacs configuration when editing Git commits.

## Installation

Last test of installation: fresh new Debian 12 system.

### Prerequisites

This configuration was designed for and tested under bash and GNOME.

- ```sudo apt-get install bash-completion```
- ```sudo apt install autocutsel```
- ```git clone https://github.com/rbenv/rbenv.git ~/.rbenv```
- ```git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build```

### Procedure

1. Clone the repository wherever you want. I have it in `.dotfiles/`.

    ```$ git clone git@github.com:rochgs/dotfiles.git .dotfiles/```
    
2. From `~/` Symbolic link the configuration files and folders. You will need to remove existing files:

    ```
    $ cd
    $ ln -s -T .dotfiles/.bashrc .bashrc
    $ ln -s -T .dotfiles/.bash_profile .bash_profile
    $ ln -s -T .dotfiles/.gitconfig .gitconfig
    $ ln -s -T .dotfiles/.irbrc .irbrc
    $ ln -s -T .dotfiles/.pryrc .pryrc
    $ ln -s -T .dotfiles/.rdebugrc .rdebugrc
    $ ln -s -T .dotfiles/.rspec .rspec
    $ ln -s -T .dotfiles/.emacs.commits .emacs.commits
    ```
3. To synchronizes all clipboards present in an X Session, update paths in `.config/autostart/autocutsel.desktop`, then:
    
    ```
    $ cd .config/autostart
    $ ln -s -T ~/.dotfiles/.config/autostart/autocutsel.desktop autocutsel.desktop
    ```
