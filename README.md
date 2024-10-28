# Neovim configuration files

This is my personal Neovim configuration (`~/.config/nvim`). I use it on Debian 12 (Bookworm).

## Install

Clone this repo:
```sh
git clone git@github.com:yacinecheikh/nvim-config ~/.config/nvim
cd ~/.config/nvim
```


Install Neovim:
```sh
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -r /opt/nvim-linux64
sudo tar -C /opt/ -xf nvim-linux64.tar.gz
```


Install ripgrep:
```sh
wget https://github.com/BurntSushi/ripgrep/releases/download/14.1.1/ripgrep_14.1.1-1_amd64.deb
sudo apt install ./ripgrep_14.1.0-1_amd64.deb
```

Add a Nerd font for icons:
```sh
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Noto.zip
mkdir -p ~/.fonts/Noto
unzip Noto.zip -d ~/.fonts/Noto
fc-cache -f -v
```
After restarting your terminal, you should be able to set the new font.
On Debian 12 XFCE with xfce4-terminal, I use `NotoMono Nerd Font Mono Regular` because this font is similar to the default one.

Other fonts can be downloaded on [nerdfonts.com](https://www.nerdfonts.com/).


Install a C compiler (needed for the tree-sitter plugin to install parsers for different syntaxes):
```sh
sudo apt install gcc
```

Install fd:
```sh
sudo apt install fd-find
```


[comment]: # (
Global:
sudo mkdir /usr/local/share/fonts/JetBrainsMono
sudo tar -C /usr/local/share/fonts/JetBrainsMono -xf JetBrainsMono.tar.xz
)

[comment]: # (
Local:
mkdir -p ~/.fonts/JetBrainsMono
tar -C ~/.fonts/JetBrainsMono/ -xf JetBrainsMono.tar.xz
)

[comment]: # (
mkdir ~/.fonts/NerdFontsSymbolsOnly
unzip NerdFontsSymbolsOnly.zip -d ~/.fonts/NerdFontsSymbolsOnly/
)
[comment]: # (
Same for Noto
)

## Checks

The `:checkhealth` command can be used to check the status of plugins.

Specifically, the plugins to check to avoid missing critical features are:
- lazy
- telescope
- nvim-treesitter
- mason
- vim.lsp




## Useage

### AI completion

To use Supermaven for AI completion, run `:SupermavenStart`.

Supermaven is a free to use proprietary AI with a very large context size, and using it will automatically scan all your project files.

To use the free version and skip the authentication, run `SupermavenUseFree`.


### LSP

LSP servers are managed by the Mason plugin. To manage LSP servers, simply run `:Mason`.


### Package manager

The package manager used is Lazy.nvim. To manage plugins and update them, run `:Lazy` and press `U`.

### Key mappings

Most of the key mappings are kept by default. The key mappings I defined are written in `init.lua`. They all start by a comma (`,`) and use no special key combination (Ctrl, Shift, Meta).

For autocompletions, I tried configure everything the same way as other IDEs, with Tab/Shift-Tab to navigate, and Enter (CR) to confirm.

### Telescope

Telescope is a versatile plugin for quick file search using fuzzy search. It also includes a file browser, a keymap viewer, a project manager, and more.
The Telescope menu can be used with the `:Telescope` command, but I have also defined keymappings for the tasks I use the most in `init.lua`.

I suggest you browse the Telescope menu (`,t`) so that you can get used to its features and then define your own shortcuts.

### Neotree

The `:Neotree` command can be used to display a file tree on the side.
The ,ft key mapping can also be used to toggle the tree.

