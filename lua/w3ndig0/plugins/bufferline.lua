local status, bufferline = pcall(require, "bufferline")
if not status then
  print("ERROR bufferline")
  return
end

bufferline.setup({
  options = {
    show_buffer_close_icons = false,
    buffer_close_icon = "",
    close_icon = "",
  },
})

