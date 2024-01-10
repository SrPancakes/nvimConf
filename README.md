![srpancakes_logo](https://github.com/SrPancakes/nvimConf/assets/74025821/5c6b3786-b4d2-443b-a4be-51710a36b26c)
<div align="center">
    <a href="https://github.com/lunarvim/LunarVim/releases/latest">
      <img alt="Latest release" src="https://img.shields.io/github/v/release/LunarVim/LunarVim?style=for-the-badge&logo=starship&color=C9CBFF&logoColor=D9E0EE&labelColor=302D41" />
    </a>
    <a href="https://github.com/lunarvim/LunarVim/pulse">
      <img alt="Last commit" src="https://img.shields.io/github/last-commit/lunarvim/LunarVim?style=for-the-badge&logo=starship&color=8bd5ca&logoColor=D9E0EE&labelColor=302D41"/>
    </a>
    <a href="https://github.com/lunarvim/LunarVim/blob/main/LICENSE">
      <img alt="License" src="https://img.shields.io/github/license/lunarvim/lunarvim?style=for-the-badge&logo=starship&color=ee999f&logoColor=D9E0EE&labelColor=302D41" />
    </a>
    <a href="https://github.com/LunarVim/LunarVim/stargazers">
      <img alt="Stars" src="https://img.shields.io/github/stars/LunarVim/LunarVim?style=for-the-badge&logo=starship&color=c69ff5&logoColor=D9E0EE&labelColor=302D41" />
    </a>
    <a href="https://github.com/LunarVim/LunarVim/issues">
      <img alt="Issues" src="https://img.shields.io/github/issues/LunarVim/LunarVim?style=for-the-badge&logo=bilibili&color=F5E0DC&logoColor=D9E0EE&labelColor=302D41" />
    </a>
    <a href="https://github.com/LunarVim/LunarVim">
      <img alt="Repo Size" src="https://img.shields.io/github/repo-size/LunarVim/LunarVim?color=%23DDB6F2&label=SIZE&logo=codesandbox&style=for-the-badge&logoColor=D9E0EE&labelColor=302D41" />
    </a>
    <a href="https://patreon.com/chrisatmachine" title="Donate to this project using Patreon">
      <img alt="Patreon donate button" src="https://img.shields.io/badge/patreon-donate-yellow.svg?style=for-the-badge&logo=starship&color=f5a97f&logoColor=D9E0EE&labelColor=302D41" />
    </a>
    <a href="https://twitter.com/intent/follow?screen_name=chrisatmachine">
      <img alt="follow on Twitter" src="https://img.shields.io/twitter/follow/chrisatmachine?style=for-the-badge&logo=twitter&color=8aadf3&logoColor=D9E0EE&labelColor=302D41" />
    </a>

  <p align="center">
    <img src="https://stars.medv.io/LunarVim/LunarVim.svg", title="commits"/>
  </p>

# Sr Pancakes Nvim Config

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

## Command Cheatsheet

Most commands can be found between the [whichkey](./lua/srpancakes/whichkey.lua) and [keymap](./lua/srpancakes/keymap.lua) files. But some mfiles map their own bindings, so here's a quick cheatsheet of the most important ones.

### [Which Key](https://github.com/folke/which-key.nvim)

Which Key is a plugin that shows a popup with the available keybindings for the current mode. It's a great way to learn new keybindings and to remember the ones you don't use that often. You can display this menu with <Leader> key which in this config is mapped to be the <SpaceBar>
![whichkey screenshot](https://github.com/SrPancakes/nvimConf/assets/74025821/199a35e6-aa3a-43fe-8275-4da39acdd6fc)

Navigating this menu is as easy as pressing the key with the action you want to perform. Is this option has nested actions you will see how the menu changes and show new commands. You can go back on the menu with `<Backspace>`. About commands and their usages, I'll let that for you to discover.

> [!TIP]
> Once you know the commands you want to use, you can use the `<Leader>` key to perform them without having to open the menu. For example, if you to open the lazy panel you can press `<Leader>lI` and it will open it for you.

### Key Mappings

#### Window Navigation

`m-h` - Move to the window on the left\
`m-j` - Move to the window below\
`m-k` - Move to the window above\
`m-l` - Move to the window on the right\
`m-tab` - Alternate between windows in current buffer\

`n` - Move to the next search result\
`N` - Move to the previous search result\
`*` - Search for the word under the cursor\
`#` - Search for the word under the cursor backwards\
`g*` - Search for the word under the cursor _no case sensitive\
`g#` - Search for the word under the cursor backwards _no case sensitive\

#### Indentation on visual mode

`>` - Indent\
`<` - Unindent\

> [!NOTE]
> This is a custom mapping that I find very useful because it allows you to indent and unindent multiple lines at once keeping visual mode instead of quitting once you perform the indentation.


#### Mouse menu

There's also (not so) hidden menu that you can access with the mouse. You can access it by pressing the right mouse button. This menu is a bit more limited than the whichkey one, but it's still useful to have it around.
![mouse menu screenshot]()

## Plugins Installed

The list of installed plugins can be found on the [init.lua](./init.lua) file. As this build is intended to be as modular as possible, the plugins have a configuration file for each one down in the [user](./lua/srpancakes/) and the [extras](./lua/srpancakes/extras/).

> [!TIP]
> This way you can activate/deactivate plugins by simply commenting the require/spec line on the [init.lua](./init.lua) file.
> Keep in mind that already installed plugins will still be installed, but they won't be loaded on startup. If you want to uninstall them is as easy as entering the lazy panel with `:Lazy` and clean up unloaded plugins with `^x`

## Basic Customization

## Get Healthy

## Fonts

</div>
