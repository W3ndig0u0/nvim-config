local cmpSetup, cmp = pcall(require, 'cmp')
if not cmpSetup then
  return
end

local luaSnipSetup, luasnip = pcall(require, 'luasnip')
if not luaSnipSetup then
  return
end

local lskindSetup, lskind = pcall(require, 'lspkind')
if not lskindSetup then
  return
end

require("luasnip.loaders.from_vscode").lazy_load()
cmp.setup({

  completion = {
    completeopt = 'menu,menuone,noinsert'
  },

  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },

mapping = cmp.mapping.preset.insert({
    ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
    ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
    ["<C-e>"] = cmp.mapping.abort(), -- close completion window
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<Tab>"] = cmp.mapping.confirm({ select = true }),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  -- sources for autocompletion
  sources = cmp.config.sources({
    { name = "nvim_lsp" }, -- lsp
    { name = "luasnip" }, -- snippets
    { name = "buffer" }, -- text within current buffer
    { name = "path" }, -- file system paths
  }),
  -- configure lspkind for vs-code like icons
  formatting = {
    format = lskind.cmp_format({
      maxwidth = 80,
      ellipsis_char = "...",
    }),
  },
})

