local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
	return
end

local formatting = null_ls.builtins.formatting

local sources = {
	--null_ls.builtins.diagnostics.eslint,
	formatting.autopep8,
	formatting.stylua,
	formatting.prettier,
	formatting.rubocop,
}

null_ls.setup({ sources = sources })
