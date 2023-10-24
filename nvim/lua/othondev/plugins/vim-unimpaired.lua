return {
  'tpope/vim-unimpaired',
  setup = function()
    vim.api.nvim_set_keymap('n', ']p', ':let @+=@*<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('x', ']p', ':<C-U>let @+=@*<CR>', { noremap = true, silent = true })
  end
}

