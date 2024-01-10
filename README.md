# Sr Pancakes Nvim Config

```
                                  :*#*-
                                =%%%%%@@+
                              =%%%%%%%@@@@:
                             *%%%%%%%%%@@@@*
                           .#%%%%%%%%%%%@@@@*
                           #%%%%%%%%%%%%%@@@@*
                          %%%%%%%%%%%%%@@@@@@@+
                         *#%%%%%%%%%%%%%%%%%@@@*
                        +%%%%%%%%%%%%%%#%%%%@@@@%.
                       *%%%@@%:  :*****   .-#=:%@*
                      =%%#==++:   .*.==   :-==#%%:
                       #@@@%#%=:  -   :=:+%%%%%=
                       =%%%%@@@@:     .  #%@@@@@+
                     :%%%%%%%%%%# .%@@* :@@%@@%@@%:
                    -#%%%%#%%#%%%%=-%*=*@@%@@%%@@@@-
                   *%*.............................*%
                   #%=                .:....:   :=.=@-
                  :%%+                      :*###= +@*        .
                  *%%*                       .::::.*@%        .
                 +%%%%                         ::-.%@@*  .=*****
                +%%%%%.                       .=*=.@@@@* =*%%%%%:
               .%%%%%%-                        .-:-%%@@@:.===+++
               -%%%%%%*                       :--:+@@@@@= ++***+
               .%%%%%%%                   : ::.=*-%@@@@%  ++***=
                  .:-==.                . .  . ..:*=:.    ::-==
```

This is my current neovim configuration. I'm using it on a daily basis as my main editor. I'm using it for web development, python, and (soon) latex. I'm also using it for writing markdown files and taking notes.

The project is structured in a way that makes it easy to add new plugins and configurations. I'm using lazy as a plugin manager and tried to keep everything as modular as possible so adding and removing plugins would be as easy as I could make it.

## Install Neovim

You can install Neovim with your package manager ([Neovim's github repository](https://github.com/neovim/neovim)) or download the appimage from the [official website](https://neovim.io/).

## Install the configurations

First step, if you already have nvim installed make sure to remove or backup your current nvim directory (located at `~/.config/nvim`).

Then clone this repository into your `~/.config` directory.

```bash
git clone https://github.com/SrPancakes/nvimConf.git ~/.config/nvim
```

Then run nvim and install and wait for the plugins to install automatically.
> [!IMPORTANT]
> This distribution is configured to fullfill my needs and likings, so you may encounter some things like parsers, formatters and linters you don't need or want to use or some plugins that you don't like. If that's the case, I recommend you to head the [customization section]() in order to know how to fine-tune this config and make it rock!
