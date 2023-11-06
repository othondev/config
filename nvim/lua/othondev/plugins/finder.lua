return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.0',
  requires = {
    -- ???
    {'nvim-lua/plenary.nvim'},
    -- ???
    {'folke/trouble.nvim'},
  },
  config = function()
    require("trouble").setup {
      icons = false,
    }

    -- Telescope maps
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
    vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    vim.keymap.set('n', '<leader>ps', function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end)
    vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

    -- Trouble maps
    vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
    vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
    vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
    vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
    vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
    vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)

    -- Telescope X Trouble
    local actions = require("telescope.actions")
    local trouble = require("trouble.providers.telescope")

    local telescope = require("telescope")

    telescope.setup {
      defaults = {
        mappings = {
          i = { ["<c-t>"] = trouble.open_with_trouble },
          n = { ["<c-t>"] = trouble.open_with_trouble },
        },
      },
    }

  end
}
