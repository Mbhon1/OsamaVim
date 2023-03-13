-- sorting tabnine
local compare_setup, compare = pcall(require, "cmp.config.compare")
if not compare_setup then
	return
end

cmp.setup({
	sorting = {
		priority_weight = 2,
		comparators = {
			require("cmp_tabnine.compare"),
			compare.offset,
			compare.exact,
			compare.score,
			compare.recently_used,
			compare.kind,
			compare.sort_text,
			compare.length,
			compare.order,
		},
	},
})
