local setup, null_ls = pcall(require, "null_ls")
if not setup then
  return
end

local formatting = null_ls.builtins.formatting
local doagnostics = null_ls.builtins.diagnostics

null_ls.setup({
  sources = {
    
  }
})
