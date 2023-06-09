<p align="center">
    <a href="https://github.com/mbhon1/neovim-config/issues">
    <img alt="GitHub issues" src="https://img.shields.io/github/issues/mbhon1/neovim-config?color=%23C6BC39&style=for-the-badge">
    </a>
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/mbhon1/neovim-config?color=%23C63989&style=for-the-badge">
    <img alt="GitHub repo size" src="https://img.shields.io/github/repo-size/mbhon1/neovim-config?color=%2327d863&style=for-the-badge">
</p>
</p>

## Intro

- Highly customisable
- Uses [lazy.nvim](https://github.com/folke/lazy.nvim) as plugin manager

## Configs and Usage

- If you don't have a tabnine account, you can remove the plugin from the `plugins-setup.lua` file by commenting it out or deleting the lines.
- Clone the repo to your `.config/nvim` directory `git clone https://github.com/mbhon1/neovim-config ~/.config/nvim`.

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

## External Tools

- lazygit
- nodejs
- npm
- fzf
- git
- ripgrep
- pip
- nerd fonts.
- onefetch

## Shell

- zsh + starship + kitty

## Screenshots

Dashboard
![Alpha](https://imagetolink.com/ib/rz0c8GAUm0)

Code snippet
![Code](https://imagetolink.com/ib/pq5J4dSGjR)

Lazy package manager
![Lazy](https://imagetolink.com/ib/Ceo7HHEYWZ)

Lazygit
![Lazygit](https://imagetolink.com/ib/6bHSNIHEIO)

Onefetch
![Onefetch](https://imagetolink.com/ib/qS1smQ1atx)
