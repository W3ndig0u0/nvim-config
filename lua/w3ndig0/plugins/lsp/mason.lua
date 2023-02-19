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


local masonDapSetup, masonDaplsp = pcall(require, "nvim-dap")
if not masonDapSetup then
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
    "clangd",
  }
})


masonDapLsp.setup({
  ensure_installed = {
    "chrome-debug-adapter",
    "cpptools",
    "java-debug-adapter",
    "java-test",
    "netcoredbg",
  }
})

masonNullLsp.setup({
  ensure_installed = {
    "prittierd",
    "stylua",
    "eslint_d",
    "cpplint",
    "csharpier",
    "clang-format",
    "rustfmt",
  }

})
