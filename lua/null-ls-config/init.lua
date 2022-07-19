local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting

local sources = {
	--null_ls.builtins.diagnostics.eslint,
	formatting.autopep8,
	formatting.stylua,
	--formatting.prettier,
	formatting.rubocop,
}

null_ls.setup({ sources = sources })
