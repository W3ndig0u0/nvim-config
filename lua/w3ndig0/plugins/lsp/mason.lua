local masonSetup, mason = pcall(require, "mason")
if not masonSetup then
 return 
end


local masonLspSetup, masonLsp = pcall(require, "mason-lspconfig")
if not masonLspSetup then
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
