local masonSetup, mason = pcall(require, "mason")
if not masonSetup then
 return 
end


local masonLspSetup, masonLsp = pcall(require, "mason-lspconfig")
if not masonLspSetup then
 return 
end


local masonNullSetup, masonNullLsp = pcall(require, "mason-null-ls")
if not masonNullSetup then
 return 
end

mason.setup()

masonLsp.setup({
  ensure_installed = {
    "csharp_ls",
    "clangd", --C++
    "cssls",
    "html",
    "jdtls", --JAVA
    "quick_lint_js",  --Javascript
    "rust_analyzer",
  }
})

mason_null_ls.setup({
  ensure_installed = {
    "prittier",
    "stylua",
    "eslint_d",
    "prittier",
    "stylua",
    "eslint_d",
    
    
  }

})
