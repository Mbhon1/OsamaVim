return {
	"nvim-pack/nvim-spectre",
	cmd = "Spectre",
	opts = { open_cmd = "noswapfile vnew", color_devicons = true },
  -- stylua: ignore
  keys = {
    { "<leader>sr", function() require("spectre").open() end, desc = "Replace in files (Spectre)" },
  },
}

-- local setup, spectre = pcall(require, "spectre")
-- if not setup then
-- 	return
-- end
--
-- spectre.setup({
-- 	color_devicons = true,
-- 	open_cmd = "vnew",
-- 	live_update = false, -- auto execute search again when you write any file in vim
-- 	line_sep_start = "┌-----------------------------------------",
-- 	result_padding = "¦  ",
-- 	line_sep = "└-----------------------------------------",
-- 	highlight = {
-- 		ui = "String",
-- 		search = "DiffChange",
-- 		replace = "DiffDelete",
-- 	},
-- })
