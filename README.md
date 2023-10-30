## Installation

Last test of installation: fresh new Debian 12 system.

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
    $ cd .config/autostart
    $ ln -s -T ~/.dotfiles/.config/autostart/autocutsel.desktop autocutsel.desktop
    ```
