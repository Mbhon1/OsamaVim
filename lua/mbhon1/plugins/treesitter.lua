-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.config")
if not status then
	return
end

-- configure treesitter
treesitter.setup({
	-- enable syntax highlighting
	highlight = {
		enable = true,
		disable = {},
	},
	-- rainbow brackets highlighting
	rainbow = {
		enable = true,
		extended_mode = false,
		colors = {
			"Gold",
			"Orchid",
			"DodgerBlue",
			"Cornsilk",
			"Salmon",
			"LawnGreen",
		}, -- table of hex strings
		-- termcolors = {} -- table of color names
	},
	-- enable indentation
	indent = { enable = true },
	-- enable autotagging (w/ nvim-ts-autotag plugin)
	autotag = { enable = true },
	-- ensure these language parsers are installed
	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"tsx",
		"yaml",
		"html",
		"css",
		"markdown",
		"markdown_inline",
		"graphql",
		"bash",
		"lua",
		"vim",
		"gitignore",
	},
	-- auto install above language parsers
	auto_install = true,
})
