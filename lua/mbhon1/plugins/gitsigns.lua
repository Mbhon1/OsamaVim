-- import gitsigns plugin safely
local setup, gitsigns = pcall(require, "gitsigns")
if not setup then
	return
end

-- configure/enable gitsigns
gitsigns.setup({
	signs = {
		add = { text = "│" },
		change = { text = "│" },
		delete = { text = "_" },
		topdelete = { text = "‾" },
		changedelete = { text = "~" },
		untracked = { text = "┆" },
	},
	signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
	numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
	linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
	word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
	watch_gitdir = {
		interval = 1000,
		follow_files = true,
	},
	attach_to_untracked = true,
	current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
	current_line_blame_opts = {
		virt_text = true,
		virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
		delay = 1000,
		ignore_whitespace = false,
	},
	current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
	sign_priority = 6,
	update_debounce = 100,
	status_formatter = nil, -- Use default
	max_file_length = 40000, -- Disable if file is longer than this (in lines)
	preview_config = {
		-- Options passed to nvim_open_win
		border = "single",
		style = "minimal",
		relative = "cursor",
		row = 0,
		col = 1,
	},
	yadm = {
		enable = false,
	},
	-- on_attach = function(buffer)
	-- 	local gs = package.loaded.gitsgins
	--
	-- 	local function map(mode, l, r, desc)
	-- 		vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
	-- 	end
	--
	-- 	-- Actions
	-- 	map({ "n", "v" }, "<leader>hs", ":Gitsigns stage_hunk<CR>", "Stage Hunk")
	-- 	map({ "n", "v" }, "<leader>hr", ":Gitsigns reset_hunk<CR>", "Reset Hunk")
	-- 	map("n", "<leader>hS", gs.stage_buffer, "Stage Buffer")
	-- 	map("n", "<leader>hu", gs.undo_stage_hunk, "Undo Stage Hunk")
	-- 	map("n", "<leader>hR", gs.reset_buffer, "Reset Buffer")
	-- 	map("n", "<leader>hp", gs.preview_hunk, "Preview Hunk")
	-- 	map("n", "<leader>hb", function()
	-- 		gs.blame_line({ full = true })
	-- 	end, "Blame Line")
	-- 	map("n", "<leader>tb", gs.toggle_current_line_blame, "Toggle Blame Line")
	-- 	map("n", "<leader>hd", gs.diffthis, "Diff This")
	-- 	map("n", "<leader>hD", function()
	-- 		gs.diffthis("~")
	-- 	end, "Diff This ~")
	-- 	map("n", "<leader>td", gs.toggle_deleted, "Toggle Deleted")
	-- end,
})
