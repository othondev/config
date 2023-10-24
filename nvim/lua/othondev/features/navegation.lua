vim.keymap.set("n", "gd", "<Plug>(coc-definition)", {silent = true})
vim.keymap.set("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
vim.keymap.set("n", "gi", "<Plug>(coc-implementation)", {silent = true})
vim.keymap.set("n", "gr", "<Plug>(coc-references)", {silent = true})

vim.keymap.set("n", "[g", "<Plug>(coc-diagnostic-prev)", {silent = true})
vim.keymap.set("n", "]g", "<Plug>(coc-diagnostic-next)", {silent = true})

vim.keymap.set('i', 'kj', '<Esc>j', {})
vim.keymap.set('i', 'jk', '<Esc>k', {})
vim.keymap.set('i', 'jj', '<Esc>j', {})
vim.keymap.set('i', 'kk', '<Esc>k', {})
vim.keymap.set('n', '<Esc>', '<Esc>:nohl<CR>', {})
