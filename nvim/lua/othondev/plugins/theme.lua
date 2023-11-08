return {
  'rose-pine/neovim',
  as = 'rose-pine',
  requires = {
    {'folke/zen-mode.nvim'},
    {'nvim-lualine/lualine.nvim'},
  },
  config = function()
    vim.cmd('colorscheme rose-pine')

    require('lualine').setup()
  end
}
