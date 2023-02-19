-- import lspconfig plugin safely
local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return
end

-- import cmp-nvim-lsp plugin safely
local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end

local keymap = vim.keymap -- for conciseness

-- enable keybinds only for when lsp server available
local on_attach = function(client, bufnr)
  -- keybind options
local opts = { noremap = true, silent = true, buffer = bufnr }

  -- set keybinds


keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts) -- show definition, references
keymap.set("n", "§", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
keymap.set("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line

end

-- used to enable autocompletion (assign to every lsp server config)
local capabilities = cmp_nvim_lsp.default_capabilities()

--'NOTE: Configure c# lsp
lspconfig["csharp_ls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,

})

-- configure c++ server
lspconfig["clangd"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["html"].setup({
  capabilities = capabilities,
  on_attach = on_attach,

})

-- configure css server
lspconfig["cssls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})


-- configure java server
lspconfig["jdtls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,

})

-- configure js server
lspconfig["quick_lint_js"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})


-- configure rust server
lspconfig["rust_analyzer"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

-- configure emmet language server
lspconfig["emmet_ls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = { "html", "javascript", "css", },
})
