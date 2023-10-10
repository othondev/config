return {
  'nvim-telescope/telescope.nvim', tag = '0.1.3',
  requires = { {'nvim-lua/plenary.nvim'} },
  config = function()

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader><BS>', builtin.oldfiles(), {})
  end
}
