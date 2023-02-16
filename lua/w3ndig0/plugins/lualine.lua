-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

-- get lualine nightfly theme
local lualine_horizon = require("lualine.themes.horizon")

-- -- new colors for theme

-- change nightlfy theme colors
-- lualine_horizon.normal.a.bg = new_colors.blue
-- lualine_horizon.insert.a.bg = new_colors.green
-- lualine_horizon.visual.a.bg = new_colors.violet
lualine_horizon.command = {
  a = {
    gui = "bold",
    -- bg = new_colors.yellow,
    -- fg = new_colors.black, -- black
  },
}

-- configure lualine with modified theme
lualine.setup({
  options = {
    theme = lualine_horizon,
    icon = {'', color={fg='#21BFC2'}}
  },
})
