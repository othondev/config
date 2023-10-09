return {
    'tpope/vim-unimpaired',

    -- Additional setup for Vim-Unimpaired (if needed)
    -- For example, to add custom key mappings:
    -- You can define your custom key mappings here:
    -- This example maps ]p to paste from clipboard in normal mode
    -- and [p to paste from clipboard in visual mode
    setup = function()
        vim.api.nvim_set_keymap('n', ']p', ':let @+=@*<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('x', ']p', ':<C-U>let @+=@*<CR>', { noremap = true, silent = true })
    end
}

