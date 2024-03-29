<div align='center'>

# Sr Pancakes Nvim Config

![srpancakes_logo](https://github.com/SrPancakes/nvimConf/assets/74025821/5c6b3786-b4d2-443b-a4be-51710a36b26c)

![GitHub last commit (by committer)](https://img.shields.io/github/last-commit/SrPancakes/nvimConf?style=for-the-badge&logo=github&logoColor=white)
![GitHub issues](https://img.shields.io/github/issues/SrPancakes/nvimConf?style=for-the-badge&logo=git&logoColor=white)
![GitHub License](https://img.shields.io/github/license/SrPancakes/nvimConf?style=for-the-badge&logo=github&logoColor=white)
![GitHub repo size](https://img.shields.io/github/repo-size/SrPancakes/nvimConf?style=for-the-badge&logo=git&logoColor=white)
![Static Badge](https://img.shields.io/badge/BuyMeACoffee-%40SrPancakes-%23FD0?style=for-the-badge&logo=buymeacoffee&logoColor=white&link=https://www.buymeacoffee.com/srpancakes)
</div>

<div align='center'>

**_A customizable modular IDE solution for Neovim_**

</div>

---

<div align='center'>
  
  [<kbd> <br> INSTALL <br> </kbd>](#Install-Neovim)
  [<kbd> <br> COMMAND CHEATSHEET <br> </kbd>](#Command-Cheatsheet)
  [<kbd> <br> PLUGINS <br> </kbd>](#Plugins-Installed)
  [<kbd> <br> BASIC CUSTOMIZATION <br> </kbd>](#Basic-Customization)
  [<kbd> <br> GET HEALTHY <br> </kbd>](#Get-Healthy)

</div>

---

## Showcase

![showcase1](https://github.com/SrPancakes/nvimConf/assets/74025821/305c1f8f-b233-464a-910e-811a9c015c4b)
![showcase2](https://github.com/SrPancakes/nvimConf/assets/74025821/c3582e6f-66b3-451b-af42-3fc8f6ba059a)

## About

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
`g*` - Search for the word under the cursor \_no case sensitive\
`g#` - Search for the word under the cursor backwards \_no case sensitive\

#### Indentation on visual mode

`>` - Indent\
`<` - Unindent\

> [!NOTE]
> This is a custom mapping that I find very useful because it allows you to indent and unindent multiple lines at once keeping visual mode instead of quitting once you perform the indentation.

#### Mouse menu

There's also (not so) hidden menu that you can access with the mouse. You can access it by pressing the right mouse button. This menu is a bit more limited than the whichkey one, but it's still useful to have it around.
![mousemenu](https://github.com/SrPancakes/nvimConf/assets/74025821/f0df38f9-314c-4d90-a8fa-abc6c1733842)

> [!NOTE]
> Depending on the context, the mouse menu will change and show different options

## Plugins Installed

The list of installed plugins can be found on the [init.lua](./init.lua) file. As this build is intended to be as modular as possible, the plugins have a configuration file for each one down in the [user](./lua/srpancakes/) and the [extras](./lua/srpancakes/extras/).

> [!TIP]
> This way you can activate/deactivate plugins by simply commenting the require/spec line on the [init.lua](./init.lua) file.
> Keep in mind that already installed plugins will still be installed, but they won't be loaded on startup. If you want to uninstall them is as easy as entering the lazy panel with `:Lazy` and clean up unloaded plugins with `^x`

## Basic Customization

Themes are installed under the [colorscheme.lua](./lua/srpancakes/colorschemes.lua) file. You can change the theme by simply changing the package the function requires.

> [!NOTE]
> An interesting implementation would be to add a list of themes and modify this function to require the theme desired. But as for me it seems a bit overkill since having the spec function implemented you can already create a folder with different colorschemes configurations and require them on the init.lua file. Anyways I'll leave it this way for now and may be changin it in the future. Meanwhile you can play with this things to get it right for you.
> Another interesting way of changing between themes is with the [Whichkey](#Which-Key) menu. You'll only have to type `<Leader>fc` and it will open a little pop-up menu with a list of available themes.

> [!WARNING]
> Still working on this section

## Get Healthy

Open nvim and enter the following command:

```
:checkhealth
```

This will run a series of tests and provide you information about the health of your nvim installation.
You'll notice that some of the tests will fail. This is due to lack of some dependencies. Here's an example of how to set up the support for python and nodejs:

- Neovim Python support
  - Install python3 and pip3
  - Install the neovim python package with pip3
    ```
    pip3 install pynvim
    ```

- Neovim node support
  - Install nodejs and npm
  - Install the neovim node package with npm
    ```
    npm install -g neovim
    ```

>[!NOTE]
>Here's the example of how to install node support with npm, but you can use any node package manager you want. I personally use bun, but this relies totally on your personal preferences.

## Fonts

For this distro to work properly, I strongly recommend to install any [Nerd Font](https://www.nerdfonts.com/) of your liking. This in order to get the icons working properly. I'm currently using **_JetBrains Mono Nerd Font_** but you can get any of your choice.

---

> The computing scientist's main challenge is not to get confused by the complexities of his own making.\
>-Edsger W. Dijkstra
