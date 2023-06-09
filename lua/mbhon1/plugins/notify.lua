local setup, notify = pcall(require, "notify")
if not setup then
	return
end

notify.setup({
	background_colour = "#000000",
	fps = 30,
	icons = {
		DEBUG = "",
		ERROR = "",
		INFO = "",
		TRACE = "✎",
		WARN = "",
	},
	level = 2,
	minimum_width = 50,
	render = "minimal",
	stages = "fade_in_slide_out",
	timeout = 5000,
	top_down = true,
})
