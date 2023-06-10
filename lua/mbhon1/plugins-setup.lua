local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	"wbthomason/packer.nvim",

	"nvim-lua/plenary.nvim", -- lua functions that many plugins use

	-- colorschemes
	"bluz71/vim-nightfly-guicolors",
	"lunarvim/onedarker.nvim",
	"lunarvim/darkplus.nvim",
	"folke/tokyonight.nvim",
	"catppuccin/nvim",
	"rebelot/kanagawa.nvim",
	"ellisonleao/gruvbox.nvim",
	"olimorris/onedarkpro.nvim",
	"xiyaowong/transparent.nvim", -- transparent plugin

	"christoomey/vim-tmux-navigator", -- tmux & split window navigation

	"szw/vim-maximizer", -- maximizes and restores current window

	-- essential plugins
	"tpope/vim-surround", -- add, delete, change surroundings (it's awesome)
	"inkarkat/vim-ReplaceWithRegister", -- replace with register contents using motion (gr + motion)

	-- commenting with gc
	"numToStr/Comment.nvim",

	-- file explorer
	"nvim-tree/nvim-tree.lua",

	-- vs-code like icons
	"nvim-tree/nvim-web-devicons",

	-- statusline
	"nvim-lualine/lualine.nvim",

	-- fuzzy finding w/ telescope
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" }, -- dependency for better sorting performance
	-- fuzzy finder
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	-- File browser
	{
		"nvim-telescope/telescope-file-browser.nvim",
		config = function()
			require("telescope").load_extension("file_browser")
		end,
	},
	-- fuzzy path
	-- {
	--   "tzachar/cmp-fuzzy-path",
	--   dependencies = {"hrsh7th/nvim-cmp", "tzachar/fuzzy.nvim"}
	-- },

	-- autocompletion
	"hrsh7th/nvim-cmp", -- completion plugin
	"hrsh7th/cmp-buffer", -- source for text in buffer
	"hrsh7th/cmp-path", -- source for file system paths
	{ "tzachar/cmp-tabnine", build = "./install.sh", dependencies = { "hrsh7th/nvim-cmp" } },
	-- tabnine auto-predection

	-- snippets
	"L3MON4D3/LuaSnip", -- snippet engine
	"saadparwaiz1/cmp_luasnip", -- for autocompletion
	"rafamadriz/friendly-snippets", -- useful snippets

	-- managing & installing lsp servers, linters & formatters
	"williamboman/mason.nvim", -- in charge of managing lsp servers, linters & formatters
	"williamboman/mason-lspconfig.nvim", -- bridges gap b/w mason & lspconfig

	-- configuring lsp servers
	"neovim/nvim-lspconfig", -- easily configure language servers
	"hrsh7th/cmp-nvim-lsp", -- for autocompletion
	{
		"glepnir/lspsaga.nvim",
		branch = "main",
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" },
			{ "nvim-treesitter/nvim-treesitter" },
		},
	}, -- enhanced lsp uis
	"jose-elias-alvarez/typescript.nvim", -- additional functionality for typescript server (e.g. rename file & update imports)
	"onsails/lspkind.nvim", -- vs-code like icons for autocompletion

	-- formatting & linting
	"jose-elias-alvarez/null-ls.nvim", -- configure formatters & linters
	"jayp0521/mason-null-ls.nvim", -- bridges gap b/w mason & null-ls

	-- treesitter configuration
	{
		"nvim-treesitter/nvim-treesitter",
		build = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	},

	-- auto closing
	"windwp/nvim-autopairs", -- autoclose parens, brackets, quotes, etc...
	"windwp/nvim-ts-autotag", --[[ after = { "nvim-treesitter" } ]] -- autoclose tags

	-- git integration
	"lewis6991/gitsigns.nvim", -- show line modifications on left hand side
	"f-person/git-blame.nvim",

	-- colorizer
	--[[ "norcalli/nvim-colorizer.lua", ]]
	-- color text according to formats
	"NvChad/nvim-colorizer.lua",
	{
		"roobert/tailwindcss-colorizer-cmp.nvim",
		-- optionally, override the default options:
		-- config = function()
		-- 	require("tailwindcss-colorizer-cmp").setup({
		-- 		color_square_width = 2,
		-- 	})
		-- end,
	},

	-- indentation style
	"lukas-reineke/indent-blankline.nvim",

	-- syntax highlighting part of treesitter
	"p00f/nvim-ts-rainbow",

	-- lsp better error lines
	{
		url = "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		config = function()
			require("lsp_lines").setup()
		end,
	},

	-- bufferline
	{ "akinsho/bufferline.nvim", version = "v3.*", dependencies = { "nvim-tree/nvim-web-devicons" } },

	-- Spectre search
	"windwp/nvim-spectre",

	-- which-key
	"folke/which-key.nvim",

	-- vim illuminate
	{ "RRethy/vim-illuminate", dependencies = { "nvim-lua/plenary.nvim" } },

	-- todo comments
	"folke/todo-comments.nvim",

	-- notify
	"rcarriga/nvim-notify",

	-- nui
	"MunifTanjim/nui.nvim",

	-- noice
	{
		"folke/noice.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},

	-- dressing
	"stevearc/dressing.nvim",

	-- indent scope
	"echasnovski/mini.nvim",

	-- alpha
	{
		"goolord/alpha-nvim",
		-- event = "VimEnter",
		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")

			dashboard.section.header.val = {
				"                                                     ",
				"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
				"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
				"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
				"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
				"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
				"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
				"                                                     ",
				"                      @print_whoami                  ",
			}

			dashboard.section.buttons.val = {
				dashboard.button("e", "  New file", "<cmd>ene <CR>"),
				dashboard.button("SPC f f", "󰈞  Find file"),
				dashboard.button("SPC f h", "󰊄  Recently opened files"),
				dashboard.button("SPC s B", "  Browse Files"),
				dashboard.button("SPC f s", "󰈬  Find word"),
				dashboard.button("Lazy update", "  Lazy", "<cmd>Lazy update<CR>"),
				dashboard.button("q", "  Quit NVIM", ":qa<CR>"),
			}

			alpha.setup(dashboard.opts)
		end,
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	-- persistents
	{
		"folke/persistence.nvim",
		event = "BufReadPre", -- this will only start session saving when an actual file was opened
		module = "persistence",
		config = function()
			require("persistence").setup({
				dir = vim.fn.expand(vim.fn.stdpath("state") .. "/sessions/"), -- directory where session files are saved
				options = { "buffers", "curdir", "tabpages", "winsize" }, -- sessionoptions used for saving
				pre_save = nil, -- a function to call before saving the session
			})
		end,
	},

	-- testing multi curors
	{ "mg979/vim-visual-multi", branch = "master" },

	-- jest tester
	"David-Kunz/jester",

	-- live-server vs-code
	"manzeloth/live-server",

	-- neoscroll for smooth scrolling
	"karb94/neoscroll.nvim",

	-- Lazygit
	{
		"kdheepak/lazygit.nvim",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("telescope").load_extension("lazygit")
		end,
	},

	"rmagatti/auto-session", -- Intelligent Neovim session manager

	-- Zone screensaver
	"tamton-aquib/zone.nvim",
}

local opts = {}

require("lazy").setup(plugins, opts)
