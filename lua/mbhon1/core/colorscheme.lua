--[[  set colorscheme to nightfly with protected call ]]
--[[  in case it isn't installed ]]
-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
-- if not status then
-- 	print("Colorscheme not found!") -- print error if colorscheme not installed
-- 	return
-- end

-- tokyonight
-- local status, _ = pcall(vim.cmd, "colorscheme tokyonight-moon")
-- if not status then
-- 	print("Colorscheme not found!")
-- 	return
-- end

-- onedarkpro
-- local status, _ = pcall(vim.cmd, "colorscheme onedark")
-- if not status then
-- 	print("Colorscheme not found!")
-- 	return
-- end
--
-- require("onedarkpro").setup({
-- 	styles = {
-- 		types = "italic",
-- 		methods = "NONE",
-- 		numbers = "NONE",
-- 		strings = "NONE",
-- 		comments = "italic",
-- 		keywords = "bold, italic",
-- 		constants = "italic",
-- 		functions = "italic",
-- 		operators = "NONE",
-- 		variables = "italic",
-- 		virtual_text = "NONE",
-- 		parameters = "bold",
-- 		conditionals = "italic",
-- 	},
-- 	options = {
-- 		transparency = false,
-- 		highlight_inactive_windows = true,
-- 		terminal_colors = true,
-- 	},
-- })

-- Onedark theme
-- vim.g.onedarker_italic_keywords = true
-- vim.g.onedarker_italic_functions = true
-- vim.g.onedarker_italic_comments = true
-- vim.g.onedarker_italic_loops = true
-- vim.g.onedarker_italic_conditionals = true
-- vim.g.onedarker_italic_statements = true
--
-- local status, _ = pcall(vim.cmd, "colorscheme onedarker")
-- if not status then
-- 	print("Colorscheme not found!") -- print error
-- 	return
-- end

-- gruvbox
local status, _ = pcall(vim.cmd, "colorscheme gruvbox")
if not status then
	print("Colorscheme not found!")
	return
end

vim.o.background = "dark"

require("gruvbox").setup({
	undercurl = true,
	underline = true,
	bold = true,
	italic = {
		strings = false,
		comments = true,
		operators = true,
		folds = true,
		keywords = true,
		functions = true,
		loops = true,
		conditionals = true,
	},
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "hard", -- can be "hard", "soft" or empty string
	palette_overrides = {},
	overrides = {},
	dim_inactive = false,
	transparent_mode = false,
})
