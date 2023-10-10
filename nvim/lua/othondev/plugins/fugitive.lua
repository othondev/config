return {
  'tpope/vim-fugitive',
  config = function()
    vim.api.nvim_set_keymap('n', '<leader>gg', ':Git<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>gb', ':Git blame<CR>', { noremap = true, silent = true })
  end
}
