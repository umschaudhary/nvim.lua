-- Set barbar's options
require("bufferline").setup({
	-- Enable/disable auto-hiding the tab bar when there is a single buffer
	auto_hide = false,
	-- Enable/disable current/total tabpages indicator (top right corner)
	tabpages = true,
	-- Enable/disable close button
	closable = true,
	clickable = true,
	-- Excludes buffers from the tabline
	exclude_ft = { "javascript" },
	exclude_name = { "package.json" },
	icons = true,

	icon_custom_colors = false,

	-- Configure icons on the bufferline.
	icon_separator_active = "",
	icon_separator_inactive = "",
	icon_close_tab = "",
	icon_close_tab_modified = "●",
	icon_pinned = "車",

	-- If true, new buffers will be inserted at the start/end of the list.
	-- Default is to insert after current buffer.
	insert_at_end = false,
	insert_at_start = false,

	-- Sets the maximum padding width with which to surround each tab
	maximum_padding = 1,
	-- Sets the maximum buffer name length.
	maximum_length = 30,

	semantic_letters = true,

	letters = "asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP",
	no_name_title = nil,
})
