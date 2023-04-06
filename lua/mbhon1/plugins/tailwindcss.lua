require("cmp").config.formatting = {
	format = require("tailwindcss-colorizer-cmp").formatter,
}

local setup, tailwind = pcall(require, "tailwindcss-colorizer-cmp")
if not setup then
	return
end

tailwind.setup({
	color_square_width = 2,
})
