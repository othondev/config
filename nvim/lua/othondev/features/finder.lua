local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').find_files()<CR>]], opts)
vim.keymap.set('n', '<leader>fg', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], opts)
vim.keymap.set('n', '<leader>fd', '<cmd>Telescope diagnostics<CR>')
vim.keymap.set('n', '<leader><BS>', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]], opts)
vim.keymap.set('n', '<leader>:', [[<cmd>lua require('telescope.builtin').commands()<CR>]], opts)
