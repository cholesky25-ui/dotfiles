local M = {}

function M.line_number_colors()
--  vim.api.nvim_set_hl(0, "SignColumn", {
--    bg = "#222222",
--  })

  vim.api.nvim_set_hl(0, "CursorLineNr", {
    fg = "#222222",
    bg = "#ddeecc",
    bold = true,
  })

  vim.api.nvim_set_hl(0, "LineNr", {
    fg = "#d6d2c8",
    bg = "#222222",
  })
end

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    M.line_number_colors()
  end,
})

return M


