<div align="center">
    <h1>Neovim Config
    <br>
    <a href="https://www.lua.org/">
    <img
        alt="Lua"
        src="https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white">
    </a>
    <a href="https://github.com/neovim/neovim">
    <img
        alt="Neovim"
        src="https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white">
    </a>
    </h1>
</div>

<p align="center">
    <a href="https://github.com/mbhon1/neovim-config/issues">
    <img alt="GitHub issues" src="https://img.shields.io/github/issues/mbhon1/neovim-config?color=%23C6BC39&style=for-the-badge">
    </a>
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/mbhon1/neovim-config?color=%23C63989&style=for-the-badge">
    <img alt="GitHub repo size" src="https://img.shields.io/github/repo-size/mbhon1/neovim-config?color=%2327d863&style=for-the-badge">
</p>
</p>

## ✍️I Intro

- Highly customisable
- Uses [lazy.nvim](https://github.com/folke/lazy.nvim) as plugin manager

## ⌨️ Configs and Usage

- Clone the repo to your `git clone https://github.com/mbhon1/neovim-config ~/.config/nvim`.
- If you don't have a tabnine account, you can remove the plugin from the `plugins-setup.lua` file by commenting it out or deleting the lines.
- Enter this `:lua print(vim.fn.stdpath("data") .. "/live-server/")` command to enable [live-server.nvim](https://github.com/aurum77/live-server.nvim).

## 📂 File Structure

```
.
├── init.lua
├── lazy-lock.json
├── lua
│   └── mbhon1
│       ├── core
│       │   ├── colorscheme.lua
│       │   ├── keymaps.lua
│       │   └── options.lua
│       ├── init.lua
│       ├── plugins
│       │   ├── alpha.lua
│       │   ├── autopairs.lua
│       │   ├── auto-sessions.lua
│       │   ├── bufferline.lua
│       │   ├── colorizer.lua
│       │   ├── comment.lua
│       │   ├── dashboard.lua
│       │   ├── dbsession.lua
│       │   ├── dressing.lua
│       │   ├── gitsigns.lua
│       │   ├── indent.lua
│       │   ├── lsp
│       │   │   ├── lspconfig.lua
│       │   │   ├── lspsaga.lua
│       │   │   ├── mason.lua
│       │   │   └── null-ls.lua
│       │   ├── lsp-lines.lua
│       │   ├── lualine.lua
│       │   ├── neoscroll.lua
│       │   ├── noice.lua
│       │   ├── notify.lua
│       │   ├── nvim-cmp.lua
│       │   ├── nvim-tree.lua
│       │   ├── spectre.lua
│       │   ├── tabnine.lua
│       │   ├── tailwindcss.lua
│       │   ├── telescope.lua
│       │   ├── todo-comments.lua
│       │   ├── transparent.lua
│       │   ├── treesitter.lua
│       │   ├── vim-illuminate.lua
│       │   └── which-key.lua
│       ├── plugins-setup.lua
│       └── remap.lua
└── README.md
```

## 🛠️ External Tools

- lazygit
- nodejs
- npm
- fzf
- git
- ripgrep
- pip
- nerd fonts.
- onefetch

## 🐚 Shell

- zsh + starship + kitty

![Onefetch](./Screenshots/onefetch.png)

## 📸 Screenshots

Dashboard

![Alpha](./Screenshots/alpha.png)

Transparency-off

![Transparent](./Screenshots/transparent-off.png)

Gruvbox theme

![Code](./Screenshots/code.png)

Screensaver

![Zones](./Screenshots/zone.png)

Lazy package manager

![Lazy](./Screenshots/lazy.png)

Lazygit

![Lazygit](./Screenshots/lazygit.png)
