local cmpSetup, cmp = pcall(require, 'cmp')
if not cmpSetup then
  return
end

local luaSnipSetup, luasnip = (require, 'luasnip')
if not luaSnipSetup then
  return
end

local lskindSetup, lskind = (require, 'lskind')
if not lskindSetup then
  return
end
