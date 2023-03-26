local setup, dashboard = pcall(require, "dashboard")
if not setup then
	return
end

dashboard.setup({
	theme = "hyper", --  theme is doom and hyper default is hyper
	disable_move = true, --  defualt is false disable move keymap for hyper
	shortcut_type = "letter", --  shorcut type 'letter' or 'number'
	change_to_vcs_root = false, -- default is false,for open file in hyper mru. it will change to the root of vcs
	config = {
		center = {
			{
				icon = "",
				icon_hl = "group",
				desc = "description",
				desc_hl = "group",
				key = "shortcut key in dashboard buffer not keymap !!",
				key_hl = "group",
				action = "",
			},
		},
		footer = {},
	}, --  config used for theme
	hide = {
		statusline = true, -- hide statusline default is true
		tabline = true, -- hide the tabline
		winbar = true, -- hide winbar
	},
	preview = {
		command = true, -- preview command
		file_path = true, -- preview file path
		file_height = true, -- preview file height
		file_width = true, -- preview file width
	},
})
