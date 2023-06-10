local setup, bufferline = pcall(require, "bufferline")
if not setup then
	return
end

bufferline.setup({
	options = {
		hover = {
			enabled = true,
			delay = 200,
			reveal = { "close" },
		},
		numbers = "both",
		indicator = {
			-- icon = "▎",
			style = "underline",
		},
	},
})

vim.g.transparent_groups = vim.list_extend(
	vim.g.transparent_groups or {},
	vim.tbl_map(function(v)
		return v.hl_group
	end, vim.tbl_values(require("bufferline.config").highlights))
)

vim.g.transparent_groups = vim.list_extend(
	vim.g.transparent_groups or {},
	vim.tbl_map(function(v)
		return v.hl_group
	end, vim.tbl_values(require("bufferline.config").highlights))
)
