local function load_features()
  local features_files = vim.fn.globpath(vim.fn.stdpath('config') .. '/lua/othondev/features', '*.lua', false, true)

  for _, features_file in ipairs(features_files) do
    if features_file ~= vim.fn.stdpath('config') .. '/lua/othondev/features/init.lua' then
      require('othondev.features.' .. vim.fn.fnamemodify(features_file, ':t:r'))
    end
  end
end

load_features()

