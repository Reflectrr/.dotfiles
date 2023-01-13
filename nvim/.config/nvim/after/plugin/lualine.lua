require('lualine').setup {
  options = { theme = 'gruvbox' },
  tabline = {
    lualine_a = {'buffers'},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {'tabs'}
  }
}

vim.keymap.set("n", "<leader>1", ':LualineBuffersJump 1<cr>')
vim.keymap.set("n", "<leader>2", ':LualineBuffersJump 2<cr>')
vim.keymap.set("n", "<leader>3", ':LualineBuffersJump 3<cr>')
vim.keymap.set("n", "<leader>4", ':LualineBuffersJump 4<cr>')
vim.keymap.set("n", "<leader>5", ':LualineBuffersJump 5<cr>')
vim.keymap.set("n", "<leader>6", ':LualineBuffersJump 6<cr>')
vim.keymap.set("n", "<leader>7", ':LualineBuffersJump 7<cr>')
vim.keymap.set("n", "<leader>8", ':LualineBuffersJump 8<cr>')
vim.keymap.set("n", "<leader>9", ':LualineBuffersJump 9<cr>')
