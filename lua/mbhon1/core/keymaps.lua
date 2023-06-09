-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
local map = vim.api.nvim_set_keymap

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "exit" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear Highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "increment +" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "decrement -" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split Vert" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split Hoz" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Split Eq" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Close Current" }) -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "New Tab" }) -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close Tab" }) -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "Next Tab" }) --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "Prev Tab" }) --  go to previous tab

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
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "find cursor" }) -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "open buffer" }) -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "help" }) -- list available help tags

-- telescope git commands
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", { desc = "Git Commits" }) -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>", { desc = "Commits Current" }) -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "List Branches" }) -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>", { desc = "Changes" }) -- list current changes per file with diff preview ["gs" for git status]
keymap.set("n", "<leader>gg", ":LazyGit<CR>", { desc = "LazyGit" })

-- restart lsp server
keymap.set("n", "<leader>rs", ":LspRestart<CR>", {
	desc = "Restart LSP",
}) -- mapping to restart lsp if necessary

-- spectre
keymap.set("n", "<leader>S", "<cmd>lua require('spectre').open()<CR>", {
	desc = "Spectre",
})
keymap.set("n", "<leader>sw", "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", {
	desc = "Search Current Word",
})
keymap.set("v", "<leader>sw", "<esc><cmd>lua require('spectre').open_visual()<CR>", {
	desc = "Search Current Word",
})
keymap.set("n", "<leader>sp", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
	desc = "Search Current File",
})

-- which-key
-- local wk = require("whick-key")
-- wk.register(mappings, opts)

-- todo comments
keymap.set("n", "]t", function()
	require("todo-comments").jump_next()
end, { desc = "Next TODO" })

keymap.set("n", "[t", function()
	require("todo-comments").jump_prev()
end, { desc = "Prev TODO" })

-- persistent
-- restore the session for the current directory
map("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]], { desc = "Restore Session" })
-- restore the last session
map("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true })<cr>]], { desc = "Last Session" })
-- stop Persistence => session won't be saved on exit
map("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]], { desc = "Stop Persistence" })

-- file browser
keymap.set("n", "<leader>sB", ":Telescope file_browser path=%:p:h=%:p:h<cr>", { desc = "Browse Files" })

-- executable file
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Make File Executable" })
