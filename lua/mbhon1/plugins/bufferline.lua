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
