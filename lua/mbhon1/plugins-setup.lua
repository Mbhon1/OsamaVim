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
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000, -- ensure it loads
	},

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

	-- transparent background
	-- use("xiyaowong/transparent.nvim")
	-- use("tribela/vim-transparent")

	-- dashboard
	{
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},

	-- Spectre search
	"windwp/nvim-spectre",

	-- which-key
	"folke/which-key.nvim",

	-- vim illuminate
	{ "RRethy/vim-illuminate", dependencies = { "nvim-lua/plenary.nvim" } },

	-- todo comments
	"folke/todo-comments.nvim",

	-- mini animate
	--[[ 	use("echasnovski/mini.nvim") ]]

	-- session saver
	{
		"glepnir/dbsession.nvim",
		cmd = { "SessionSave", "SessionDelete", "SessionLoad" },
		--[[ opts = { --config --} ]]
	},

	-- notify
	"rcarriga/nvim-notify",

	-- nui
	"MunifTanjim/nui.nvim",

	-- noice
	{
		"folke/noice.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
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
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("alpha").setup(require("alpha.themes.dashboard").config)
		end,
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

	-- vista
	--[[ 	use("liuchengxu/vista.vim") ]]

	-- startify
	--[[ "mhinz/vim-startify", ]]

	-- testing multi curors
	{ "mg979/vim-visual-multi", branch = "master" },

	-- kitty
	-- {
	-- 	"garyhurtz/cmp_kitty",
	-- 	dependencies = {
	-- 		{ "hrsh7th/nvim-cmp" },
	-- 	},
	-- 	init = function()
	-- 		require("cmp_kitty"):setup()
	-- 	end,
	-- },
	--
	-- jest tester
	"David-Kunz/jester",

	-- spotify
	{
		"KadoBOT/nvim-spotify",
		dependencies = "nvim-telescope/telescope.nvim",
		config = function()
			local spotify = require("nvim-spotify")

			spotify.setup({
				-- default opts
				status = {
					update_interval = 10000, -- the interval (ms) to check for what's currently playing
					format = "%s %t by %a", -- spotify-tui --format argument
				},
			})
		end,
		build = "make",
	},
}

local opts = {}

require("lazy").setup(plugins, opts)
