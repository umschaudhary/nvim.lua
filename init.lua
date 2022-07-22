require("packer-config")
local impatient_ok, impatient = pcall(require, "impatient")
if impatient_ok then
	impatient.enable_profile()
end

for _, source in ipairs({
	"settings",
	"mappings",
	"configs.colorschemes-config.nightfox",
	"configs.nvim-tree-config",
	"configs.lsp-config.server",
	"configs.lsp-config.nvim-cmp",
	"configs.lua-line",
	"configs.tabnine-config",
	"configs.tree-sitter",
	"configs.autopair-config",
	"configs.gitsign-config",
	"configs.blank-line-config",
	"configs.toggle-term-config",
	"configs.surround-config",
	"configs.aerial-config",
	"configs.colorizer-config",
	"configs.indent-o-matic-config",
	"configs.lightspeed-config",
	"configs.null-ls-config",
	"configs.nvim-lsp-installer",
	"configs.comment",
}) do
	local status_ok, fault = pcall(require, source)
	if not status_ok then
		vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault)
	end
end
