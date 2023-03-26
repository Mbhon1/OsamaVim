-- set colorscheme to nightfly with protected call
-- in case it isn't installed
-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
-- if not status then
-- print("Colorscheme not found!") -- print error if colorscheme not installed
-- return
-- end

-- Onedark theme
-- vim.g.onedarker_italic_keywords = true
-- vim.g.onedarker_italic_functions = true
-- vim.g.onedarker_italic_comments = true
-- vim.g.onedarker_italic_loops = true
-- vim.g.onedarker_italic_conditionals = true
--
-- local status, _ = pcall(vim.cmd, "colorscheme onedarker")
-- if not status then
-- 	print("Colorscheme not found!") -- print error
-- 	return
-- end

-- New theme config
local status, _ = pcall(vim.cmd, "colorscheme kanagawa")
if not status then
	return
end

require("kanagawa").setup({
	compile = false, -- enable compiling the colorscheme
	undercurl = true, -- enable undercurls
	commentStyle = { italic = true },
	functionStyle = { italic = true },
	keywordStyle = { italic = true },
	statementStyle = { italic = true },
	loopStyle = { italic = true },
	conditionalStyle = { italic = true },
	typeStyle = { italic = true },
	transparent = true, -- do not set background color
	dimInactive = false, -- dim inactive window `:h hl-NormalNC`
	terminalColors = true, -- define vim.g.terminal_color_{0,17}
	colors = { -- add/modify theme and palette colors
		palette = {},
		theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
	},
	overrides = function(colors) -- add/modify highlights
		local theme = colors.theme
		return {
			TelescopeTitle = { fg = theme.ui.special, bold = true },
			TelescopePromptNormal = { bg = theme.ui.bg_p1 },
			TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
			TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
			TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
			TelescopePreviewNormal = { bg = theme.ui.bg_dim },
			TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
		}
	end,
	theme = "wave", -- Load "wave" theme when 'background' option is not set
	background = { -- map the value of 'background' option to a theme
		dark = "wave", -- try "dragon" !
		light = "lotus",
	},
})
