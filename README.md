# AstroNvim

**NOTE:** This is for AstroNvim v4+

A preconfigured [AstroNvim](https://github.com/AstroNvim/AstroNvim) distribution.

## 🛠️ Installation

### Linux / MacOS

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Clone the repository

```shell
git clone https://github.com/edisoncks/astronvim_v4 ~/.config/nvim
```

#### Start Neovim

```shell
nvim
```

### Windows

#### Make a backup of your current nvim and shared folder

```shell
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
```

#### Clone the repository

```shell
git clone https://github.com/edisoncks/astronvim_v4 $env:LOCALAPPDATA\nvim
```

#### Start Neovim

```shell
nvim
```
