local packer = require('packer')

local function setup_plugins()
  packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Load plugins from individual files
    local plugin_files = vim.fn.globpath(vim.fn.stdpath('config') .. '/lua/othondev/plugins', '*.lua', false, true)

    for _, plugin_file in ipairs(plugin_files) do
      if plugin_file ~= vim.fn.stdpath('config') .. '/lua/othondev/plugins/init.lua' then
        use(require('othondev.plugins.' .. vim.fn.fnamemodify(plugin_file, ':t:r')))
      end
    end
  end)

  -- Load Packer.nvim plugins
  packer.compile()
end

-- Call the setup_plugins function to install and load plugins
setup_plugins()

