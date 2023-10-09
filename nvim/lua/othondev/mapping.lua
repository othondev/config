function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

                            -- Escape alternative --
map('i', 'kj', '<Esc>j', {})
map('i', 'jk', '<Esc>k', {})
map('i', 'jj', '<Esc>j', {})
map('i', 'kk', '<Esc>k', {})
map('n', '<Esc>', '<Esc>:nohl<CR>', {})

                             -- Navegation code --
map("n", "[g", "<Plug>(coc-diagnostic-prev)", {silent = true})
map("n", "]g", "<Plug>(coc-diagnostic-next)", {silent = true})
