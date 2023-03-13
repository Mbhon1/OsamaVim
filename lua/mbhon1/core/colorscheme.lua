-- set colorscheme to nightfly with protected call
-- in case it isn't installed
-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
-- if not status then
--  print("Colorscheme not found!") -- print error if colorscheme not installed
--  return
-- end

vim.g.onedarker_italic_keywords = false
vim.g.onedarker_italic_functions = true
vim.g.onedarker_italic_comments = true
vim.g.onedarker_italic_loops = true
vim.g.onedarker_italic_conditionals = true

local status, _ = pcall(vim.cmd, "colorscheme onedarker")
if not status then
	print("Colorscheme not found!") -- print error
	return
end
