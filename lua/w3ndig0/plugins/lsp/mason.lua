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
  },
  automatic_installation = true,
})

--'NOTE: Debugging,,,
-- masonDapLsp.setup({
--   ensure_installed = {
--     "chrome-debug-adapter",
--     "cpptools",
--     "java-debug-adapter",
--     "java-test",
--   }
-- })

masonNullLsp.setup({
  ensure_installed = {
    "prittier",
    "eslint_d",
    "stylua",
    "clang-format",
    "cpplint",
    "semgrep",

  },
  automatic_installation = true,

})
