local keyset = vim.keymap.set

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>ff', builtin.builtin, {})

vim.keymap.set('n', '<leader>:', builtin.commands, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<Tab>', builtin.jumplist, {})
