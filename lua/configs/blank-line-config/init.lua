local status_ok, Indent = pcall(require, "indent_blankline")
if status_ok then
	Indent.setup({
		show_current_context = true,
		show_current_context_start = true,
		show_end_of_line = true,
	})
end
