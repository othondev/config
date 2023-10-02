local keyset = vim.keymap.set

keyset("n", "<leader><Space>", ":Telescope find_files<CR>", {silent = true})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<Tab>', builtin.buffers, {})
vim.keymap.set('n', '<leader>?', builtin.help_tags, {})
