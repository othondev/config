return {
    'morhetz/gruvbox',
    config = function()
      vim.cmd('colorscheme gruvbox')
      vim.g.airline_theme = 'gruvbox'
      vim.g.lightline = { colorscheme = 'gruvbox' }
    end
}
