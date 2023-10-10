return {
  'nvim-telescope/telescope.nvim', tag = '0.1.3',
  requires = { {'nvim-lua/plenary.nvim'} },
  config = function()
    vim.api.nvim_set_keymap('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').find_files()<CR>]], { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>fg', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>fb', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader><BS>', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]], { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader><Space>', [[<cmd>lua require('telescope.builtin').commands()<CR>]], { noremap = true, silent = true })
  end
}
