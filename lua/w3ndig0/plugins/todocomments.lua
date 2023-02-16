local status_ok, todo_comments = pcall(require, "todo-comments")
if not status_ok then
  return
end

local error_red = "#F44747"
local hint_blue = "#4FC1FF"
local note_green = '#10B981'

todo_comments.setup {
  signs = true, -- show icons in the signs column
  sign_priority = 8, -- sign priority
  -- keywords recognized as todo comments
  keywords = {
    FIX = {
      icon = "",
      color = error_red, -- can be a hex color, or a named color (see below)
      alt = { "FIXME", "BUG", "bug", "Bug", "FIXIT", "ISSUE", "fix", "Fix", }, -- a set of other keywords that all map to this FIX keywords
    },
    TODO = { icon = "", color = hint_blue, alt = { "TIP", "Todo", "todo", } },
    NOTE = { icon = "󰆆", color = note_green, alt = { "INFO", "info", "Info",} },
  },
    merge_keywords = true, -- when true, custom keywords will be merged with the defaults
  highlight = {
    before = "", -- "fg" or "bg" or empty
    -- keyword = "wide", -- "fg", "bg", "wide" or empty. (wide is the same as bg, but will also highlight surrounding characters)
    keyword = "wide", -- "fg", "bg", "wide" or empty. (wide is the same as bg, but will also highlight surrounding characters)
    after = "fg", -- "fg" or "bg" or empty
    pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlightng (vim regex)
    comments_only = true, -- uses treesitter to match keywords in comments only
    max_line_len = 400, -- ignore lines longer than this
    exclude = { "markdown" }, -- list of file types to exclude highlighting
  },
  search = {
    command = "rg",
    args = {
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
    },
    pattern = [[\b(KEYWORDS):]], -- ripgrep regex
  },
}
--TODO:
--'TODO:
--"TODO:
--"FIX:
--""
