-- vim.opt.list = true
-- vim.opt.listchars:append "eol:↴"
-- vim.opt.listchars:append "space:⋅"

require("indent_blankline").setup({
  -- show_end_of_line = true,
  char = '¦',
  -- char_highlight_list = {'Function'},
  show_trailing_blankline_indent = false,
  space_char_blankline = " ",
  -- show_current_context = true,
  -- show_current_context_start = true,
})

vim.keymap.set('n', '<leader>ol', '<cmd>IndentBlanklineEnable<CR>' , { desc = '[O]ption [L]ine on' })
vim.keymap.set('n', '<leader>oL', '<cmd>IndentBlanklineDisable<CR>' , { desc = '[O]ption [L]ine off' })

-- for ./color.lua (rose-pine)
-- vim.cmd [[highlight IndentBlanklineContextChar guifg=#8bb8c0 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineContextStart guisp=#8bb8c0 gui=underline]]
