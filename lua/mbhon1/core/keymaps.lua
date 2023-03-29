-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "exit" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split V" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split H" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Split E" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Close current" }) -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "New tab" }) -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close tab" }) -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "Next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "Prev tab" }) --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", { desc = "Split Max" }) -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "file explorer" }) -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "find files" }) -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "find string" }) -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "find string cursor" }) -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "open buffer" }) -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "help tags" }) -- list available help tags

-- telescope git commands
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", { desc = "Git commits" }) -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>", { desc = "Commits current file" }) -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "List branches" }) -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>", { desc = "Changes" }) -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server
keymap.set("n", "<leader>rs", ":LspRestart<CR>", {
	desc = "restart lsp server",
}) -- mapping to restart lsp if necessary

-- spectre
keymap.set("n", "<leader>S", "<cmd>lua require('spectre').open()<CR>", {
	desc = "Open Spectre",
})
keymap.set("n", "<leader>sw", "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", {
	desc = "Search current word",
})
keymap.set("v", "<leader>sw", "<esc><cmd>lua require('spectre').open_visual()<CR>", {
	desc = "Search current word",
})
keymap.set("n", "<leader>sp", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
	desc = "Search current file",
})

-- which-key
-- local wk = require("whick-key")
-- wk.register(mappings, opts)

-- todo comments
keymap.set("n", "]t", function()
	require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

keymap.set("n", "[t", function()
	require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

-- persistent
-- restore the session for the current directory
vim.api.nvim_set_keymap("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]], { desc = "Restore Session" })

-- restore the last session
vim.api.nvim_set_keymap(
	"n",
	"<leader>ql",
	[[<cmd>lua require("persistence").load({ last = true })<cr>]],
	{ desc = "Last Session" }
)

-- stop Persistence => session won't be saved on exit
vim.api.nvim_set_keymap(
	"n",
	"<leader>qd",
	[[<cmd>lua require("persistence").stop()<cr>]],
	{ desc = "Stop Persistence" }
)
