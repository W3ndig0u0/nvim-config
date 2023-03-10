local setup, toggle = pcall(require, "toggleterm")
if not setup then
  return
end

require("toggleterm").setup({
    size = function(term)
        if term.direction == "horizontal" then
            return 20
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
    end,
    open_mapping = [[<c-å>]],
    insert_mappings = false,
    terminal_mappings = true,
    hide_numbers = true,
    shade_terminals = true,
    shading_factor = "1",
    start_in_insert = true,
    persist_size = true,
    wincmd = true,
    direction = "float",
    close_on_exit = true,
    shell = vim.o.shell,
    on_open = nil,
    on_close = nil,
})
