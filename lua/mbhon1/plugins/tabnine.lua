-- tabnine plugin setup
local tabnine_setup, tabnine = pcall(require, "cmp_tabnine.config")
if not tabnine_setup then
	return
end

tabnine:setup({
	max_lines = 1000,
	max_num_results = 20,
	sort = true,
	run_on_every_keystroke = true,
	snippet_placeholder = "..",
	ignored_file_types = {
		html = true,
	},
	show_prediction_strength = true,
})
