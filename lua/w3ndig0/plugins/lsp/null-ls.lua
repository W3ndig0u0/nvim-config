local setup, null_ls = pcall(require, "null_ls")
if not setup then
  return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
  sources = {
    formatting.prettier,
    formatting.prettierd,
    formatting.clang-format,
    formatting.eslint_d,
 },
})
