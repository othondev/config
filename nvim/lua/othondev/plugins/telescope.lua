return {
  'nvim-telescope/telescope.nvim', tag = '0.1.3',
  requires = { {'nvim-lua/plenary.nvim'} },
  config = function()

    vim.api.nvim_set_keymap('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').find_files()<CR>]], { noremap = true, silent = true })

  end
}
