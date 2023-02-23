local setup, rainbow = pcall(require, "nvim-treesitter.configs")
if not setup then
  return
end


rainbow.setup({
  rainbow = {
    enable = true,
    -- Which query to use for finding delimiters
    query = 'rainbow-parens',


    -- Highlight the entire buffer all at once
    strategy = require 'ts-rainbow.strategy.global',
    -- Do not enable for files with more than n lines
    max_file_lines = 3000
  }
})
