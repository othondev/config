-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/othon/.cache/nvim/packer_hererocks/2.1.1692716794/share/lua/5.1/?.lua;/home/othon/.cache/nvim/packer_hererocks/2.1.1692716794/share/lua/5.1/?/init.lua;/home/othon/.cache/nvim/packer_hererocks/2.1.1692716794/lib/luarocks/rocks-5.1/?.lua;/home/othon/.cache/nvim/packer_hererocks/2.1.1692716794/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/othon/.cache/nvim/packer_hererocks/2.1.1692716794/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/othon/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/othon/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/othon/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["coc.nvim"] = {
    config = { "\27LJ\2\nõ\1\0\0\6\0\b\2\0286\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\18Ä6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2\v\1\0\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0÷\2\0\0\a\0\19\00016\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\0015\3\5\0006\4\0\0009\4\6\0049\4\a\4B\1\3\2)\2\0\0\3\2\1\0X\1\bÄ6\1\0\0009\1\b\0019\1\t\1'\3\n\0\18\4\0\0&\3\4\3B\1\2\1X\1\24Ä6\1\0\0009\1\b\0019\1\v\1'\3\f\0B\1\2\2\15\0\1\0X\2\6Ä6\1\0\0009\1\1\0019\1\r\1'\3\14\0B\1\2\1X\1\vÄ6\1\0\0009\1\b\0019\1\t\1'\3\15\0006\4\0\0009\4\16\0049\4\17\4'\5\18\0\18\6\0\0&\3\6\3B\1\2\1K\0\1\0\6 \15keywordprg\6o\6!\fdoHover\19CocActionAsync\20coc#rpc#ready()\14nvim_eval\ah \17nvim_command\bapi\rfiletype\abo\1\3\0\0\bvim\thelp\nindex\f<cword>\vexpand\afn\bvimû\29\1\0\v\0t\0Õ\0026\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\1\0+\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1,\1=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0006\0\0\0009\0\a\0009\0\b\0006\1\t\0003\2\v\0=\2\n\0015\1\f\0\18\2\0\0'\4\r\0'\5\14\0'\6\15\0\18\a\1\0B\2\5\1\18\2\0\0'\4\r\0'\5\16\0'\6\17\0\18\a\1\0B\2\5\1\18\2\0\0'\4\r\0'\5\18\0'\6\19\0\18\a\1\0B\2\5\1\18\2\0\0'\4\r\0'\5\20\0'\6\21\0B\2\4\1\18\2\0\0'\4\r\0'\5\22\0'\6\23\0005\a\24\0B\2\5\0016\2\t\0003\3\26\0=\3\25\2\18\2\0\0'\4\27\0'\5\28\0'\6\29\0005\a\30\0B\2\5\0016\2\0\0009\2\31\0029\2 \2'\4!\0004\5\0\0B\2\3\0016\2\0\0009\2\31\0029\2\"\2'\4#\0005\5$\0B\2\3\1\18\2\0\0'\4\27\0'\5%\0'\6&\0005\a'\0B\2\5\1\18\2\0\0'\4(\0'\5)\0'\6*\0005\a+\0B\2\5\1\18\2\0\0'\4\27\0'\5)\0'\6*\0005\a,\0B\2\5\0016\2\0\0009\2\31\0029\2\"\2'\4-\0005\5.\0B\2\3\0016\2\0\0009\2\31\0029\2\"\2'\4/\0005\0050\0B\2\3\0015\0021\0\18\3\0\0'\5(\0'\0062\0'\a3\0\18\b\2\0B\3\5\1\18\3\0\0'\5\27\0'\0062\0'\a3\0\18\b\2\0B\3\5\1\18\3\0\0'\5\27\0'\0064\0'\a5\0\18\b\2\0B\3\5\1\18\3\0\0'\5\27\0'\0066\0'\a7\0\18\b\2\0B\3\5\1\18\3\0\0'\5\27\0'\0068\0'\a9\0\18\b\2\0B\3\5\1\18\3\0\0'\5\27\0'\6:\0'\a;\0005\b<\0B\3\5\1\18\3\0\0'\5(\0'\6=\0'\a>\0005\b?\0B\3\5\1\18\3\0\0'\5\27\0'\6=\0'\a>\0005\b@\0B\3\5\1\18\3\0\0'\5\27\0'\6A\0'\aB\0\18\b\2\0B\3\5\1\18\3\0\0'\5(\0'\6C\0'\aD\0\18\b\2\0B\3\5\1\18\3\0\0'\5E\0'\6C\0'\aD\0\18\b\2\0B\3\5\1\18\3\0\0'\5(\0'\6F\0'\aG\0\18\b\2\0B\3\5\1\18\3\0\0'\5E\0'\6F\0'\aG\0\18\b\2\0B\3\5\1\18\3\0\0'\5(\0'\6H\0'\aI\0\18\b\2\0B\3\5\1\18\3\0\0'\5E\0'\6H\0'\aI\0\18\b\2\0B\3\5\1\18\3\0\0'\5(\0'\6J\0'\aK\0\18\b\2\0B\3\5\1\18\3\0\0'\5E\0'\6J\0'\aK\0\18\b\2\0B\3\5\0015\3L\0\18\4\0\0'\6\27\0'\aM\0'\bN\0\18\t\3\0B\4\5\1\18\4\0\0'\6\27\0'\aO\0'\bP\0\18\t\3\0B\4\5\1\18\4\0\0'\6\r\0'\aM\0'\bQ\0\18\t\3\0B\4\5\1\18\4\0\0'\6\r\0'\aO\0'\bR\0\18\t\3\0B\4\5\1\18\4\0\0'\6S\0'\aM\0'\bN\0\18\t\3\0B\4\5\1\18\4\0\0'\6S\0'\aO\0'\bP\0\18\t\3\0B\4\5\1\18\4\0\0'\6\27\0'\aT\0'\bU\0005\tV\0B\4\5\1\18\4\0\0'\6(\0'\aT\0'\bU\0005\tW\0B\4\5\0016\4\0\0009\4\31\0049\4X\4'\6Y\0'\aZ\0004\b\0\0B\4\4\0016\4\0\0009\4\31\0049\4X\4'\6[\0'\a\\\0005\b]\0B\4\4\0016\4\0\0009\4\31\0049\4X\4'\6^\0'\a_\0004\b\0\0B\4\4\0016\4\0\0009\4\1\0049\4`\4\18\6\4\0009\4a\4'\ab\0B\4\3\0015\4c\0\18\5\0\0'\a\27\0'\bd\0'\te\0\18\n\4\0B\5\5\1\18\5\0\0'\a\27\0'\bf\0'\tg\0\18\n\4\0B\5\5\1\18\5\0\0'\a\27\0'\bh\0'\ti\0\18\n\4\0B\5\5\1\18\5\0\0'\a\27\0'\bj\0'\tk\0\18\n\4\0B\5\5\1\18\5\0\0'\a\27\0'\bl\0'\tm\0\18\n\4\0B\5\5\1\18\5\0\0'\a\27\0'\bn\0'\to\0\18\n\4\0B\5\5\1\18\5\0\0'\a\27\0'\bp\0'\tq\0\18\n\4\0B\5\5\1\18\5\0\0'\a\27\0'\br\0'\ts\0\18\n\4\0B\5\5\1K\0\1\0\28:<C-u>CocListResume<cr>\r<space>p\22:<C-u>CocPrev<cr>\r<space>k\22:<C-u>CocNext<cr>\r<space>j!:<C-u>CocList -I symbols<cr>\r<space>s\30:<C-u>CocList outline<cr>\r<space>o\31:<C-u>CocList commands<cr>\r<space>c!:<C-u>CocList extensions<cr>\r<space>e\":<C-u>CocList diagnostics<cr>\r<space>a\1\0\2\vsilent\2\vnowait\0028%{coc#status()}%{get(b:,'coc_current_function','')}\fprepend\15statuslineFcall CocActionAsync('runCommand', 'editor.action.organizeImport')\aOR\1\0\1\nnargs\6?%call CocAction('fold', <f-args>)\tFold\29call CocAction('format')\vFormat\29nvim_create_user_command\1\0\1\vsilent\2\1\0\1\vsilent\2\29<Plug>(coc-range-select)\n<C-s>\6vHcoc#float#has_scroll() ? \"<c-r>=coc#float#scroll(0)<cr>\" : \"<Left>\"Icoc#float#has_scroll() ? \"<c-r>=coc#float#scroll(1)<cr>\" : \"<Right>\";coc#float#has_scroll() ? coc#float#scroll(0) : \"<C-b>\"\n<C-b>;coc#float#has_scroll() ? coc#float#scroll(1) : \"<C-f>\"\n<C-f>\1\0\3\vnowait\2\texpr\2\vsilent\2\27<Plug>(coc-classobj-a)\aac\27<Plug>(coc-classobj-i)\aic\26<Plug>(coc-funcobj-a)\aaf\6o\26<Plug>(coc-funcobj-i)\aif <Plug>(coc-codelens-action)\15<leader>cl\1\0\1\vsilent\2\1\0\1\vsilent\2-<Plug>(coc-codeaction-refactor-selected)\14<leader>r\1\0\1\vsilent\2$<Plug>(coc-codeaction-refactor)\15<leader>re\28<Plug>(coc-fix-current)\15<leader>qf\"<Plug>(coc-codeaction-source)\15<leader>as\"<Plug>(coc-codeaction-cursor)\15<leader>ac$<Plug>(coc-codeaction-selected)\14<leader>a\1\0\2\vsilent\2\vnowait\2\1\0\4\fpattern\23CocJumpPlaceholder\ngroup\rCocGroup\fcommand-call CocActionAsync('showSignatureHelp')\tdesc.Update signature help on jump placeholder\tUser\1\0\4\fpattern\20typescript,json\ngroup\rCocGroup\fcommand0setl formatexpr=CocAction('formatSelected')\tdesc,Setup formatexpr specified filetype(s).\rFileType\1\0\1\vsilent\2\1\0\1\vsilent\2 <Plug>(coc-format-selected)\14<leader>f\6x\1\0\1\vsilent\2\23<Plug>(coc-rename)\15<leader>rn\1\0\3\tdesc0Highlight symbol under cursor on CursorHold\ngroup\rCocGroup\fcommand,silent call CocActionAsync('highlight')\15CursorHold\24nvim_create_autocmd\rCocGroup\24nvim_create_augroup\bapi\1\0\1\vsilent\2 <CMD>lua _G.show_docs()<CR>\6K\6n\0\14show_docs\1\0\2\vsilent\2\texpr\2\18coc#refresh()\14<c-space>%<Plug>(coc-snippets-expand-jump)\n<c-j>Ucoc#pum#visible() ? coc#pum#confirm() : \"\\<C-g>u\\<CR>\\<c-r>=coc#on_enter()\\<CR>\"\t<cr>3coc#pum#visible() ? coc#pum#prev(1) : \"\\<C-h>\"\f<S-TAB>]coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? \"<TAB>\" : coc#refresh()\n<TAB>\6i\1\0\4\vsilent\2\21replace_keycodes\1\fnoremap\2\texpr\2\0\21check_back_space\a_G\bset\vkeymap\byes\15signcolumn\15updatetime\16writebackup\vbackup\bopt\bvim\0" },
    loaded = true,
    path = "/home/othon/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/othon/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  fzf = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/othon/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/othon/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  gruvbox = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/othon/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/othon/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/othon/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\nô!\0\0\b\0|\0≥\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\4\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\t\0005\3\n\0B\0\3\0016\0\v\0'\2\f\0B\0\2\0029\0\r\0005\2\14\0005\3\15\0=\3\16\0025\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\29\0005\5\28\0=\5\30\4=\4\31\0035\4 \0=\4!\0035\4\"\0=\4#\0035\4$\0=\4%\0035\4&\0=\4'\0035\4(\0=\4)\3=\3*\0024\3\0\0=\3+\0025\3,\0005\4-\0=\4.\0035\0040\0005\5/\0=\0051\0045\0052\0005\0063\0=\0064\5=\0055\0045\0056\0005\0067\0=\0064\5=\0058\4=\0049\3=\3:\0024\3\0\0=\3;\0025\3B\0005\4<\0004\5\0\0=\5=\0044\5\0\0=\5>\0044\5\0\0=\5?\0044\5\0\0=\5@\0044\5\0\0=\5A\4=\4C\0035\4D\0=\4E\0035\4X\0005\5F\0005\6G\0005\aH\0=\a4\6=\6I\0055\6J\0=\6K\0055\6L\0=\6M\0055\6N\0=\6O\0055\6P\0=\6Q\0055\6R\0=\6S\0055\6T\0=\6U\0055\6V\0=\6W\5=\0059\0045\5Y\0=\5Z\4=\4:\0034\4\0\0=\4+\3=\3[\0025\3]\0005\4\\\0=\4E\0035\4g\0005\5^\0005\6_\0005\a`\0=\a4\6=\6I\0055\6a\0=\6K\0055\6b\0=\6M\0055\6c\0=\6Q\0055\6d\0=\6S\0055\6e\0=\6U\0055\6f\0=\6W\5=\0059\4=\4:\3=\3h\0025\3s\0005\4i\0005\5j\0005\6k\0005\al\0=\a4\6=\6I\0055\6m\0=\6K\0055\6n\0=\6M\0055\6o\0=\6Q\0055\6p\0=\6S\0055\6q\0=\6U\0055\6r\0=\6W\5=\0059\4=\4:\3=\3\31\2B\0\2\0016\0\0\0009\0t\0'\2u\0B\0\2\0016\0\0\0009\0v\0009\0w\0'\2x\0'\3y\0'\4z\0005\5{\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2):Neotree filesystem reveal float<CR>\15<leader>fe\6n\20nvim_set_keymap\bapi#nnoremap \\ :Neotree reveal<cr>\bcmd\1\0\0\1\2\1\0\18order_by_type\vnowait\1\1\2\1\0\18order_by_size\vnowait\1\1\2\1\0\18order_by_name\vnowait\1\1\2\1\0\22order_by_modified\vnowait\1\1\2\1\0\25order_by_diagnostics\vnowait\1\1\2\1\0\21order_by_created\vnowait\1\1\0\2\ntitle\rOrder by\15prefix_key\6o\1\2\1\0\14show_help\vnowait\1\1\0\a\agg\24git_commit_and_push\agc\15git_commit\agr\20git_revert_file\aga\17git_add_file\agu\21git_unstage_file\6A\16git_add_all\agp\rgit_push\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\2\1\0\18order_by_type\vnowait\1\1\2\1\0\18order_by_size\vnowait\1\1\2\1\0\18order_by_name\vnowait\1\1\2\1\0\22order_by_modified\vnowait\1\1\2\1\0\25order_by_diagnostics\vnowait\1\1\2\1\0\21order_by_created\vnowait\1\1\0\2\ntitle\rOrder by\15prefix_key\6o\1\2\1\0\14show_help\vnowait\1\1\0\3\6.\rset_root\abd\18buffer_delete\t<bs>\16navigate_up\1\0\2\21group_empty_dirs\2\18show_unloaded\2\1\0\2\fenabled\2\20leave_dirs_open\1\15filesystem\26fuzzy_finder_mappings\1\0\4\n<C-n>\21move_cursor_down\n<C-p>\19move_cursor_up\v<down>\21move_cursor_down\t<up>\19move_cursor_up\1\0\0\aot\1\2\1\0\18order_by_type\vnowait\1\aos\1\2\1\0\18order_by_size\vnowait\1\aon\1\2\1\0\18order_by_name\vnowait\1\aom\1\2\1\0\22order_by_modified\vnowait\1\aog\1\2\1\0\24order_by_git_status\vnowait\1\aod\1\2\1\0\25order_by_diagnostics\vnowait\1\aoc\1\2\1\0\21order_by_created\vnowait\1\6o\1\0\2\ntitle\rOrder by\15prefix_key\6o\1\2\1\0\14show_help\vnowait\1\1\0\n\6f\21filter_on_submit\6.\rset_root\6#\17fuzzy_sorter\6/\17fuzzy_finder\a[g\22prev_git_modified\n<c-x>\17clear_filter\a]g\22next_git_modified\6D\27fuzzy_finder_directory\6H\18toggle_hidden\t<bs>\16navigate_up\24follow_current_file\1\0\2\fenabled\1\20leave_dirs_open\1\19filtered_items\1\0\3\21group_empty_dirs\1\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\2\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\f<space>\1\0\24\6t\16open_tabnew\6d\vdelete\6z\20close_all_nodes\6s\16open_vsplit\6C\15close_node\6l\18focus_preview\6x\21cut_to_clipboard\6w\28open_with_window_picker\6c\tcopy\6S\15open_split\6m\tmove\6q\17close_window\t<cr>\topen\n<esc>\vcancel\18<2-LeftMouse>\topen\6R\frefresh\6>\16next_source\6<\16prev_source\6i\22show_file_details\6?\14show_help\6p\25paste_from_clipboard\6y\22copy_to_clipboard\6A\18add_directory\6r\vrename\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\2\rposition\tleft\nwidth\3(\rcommands\30default_component_configs\19symlink_target\1\0\1\fenabled\1\fcreated\1\0\2\fenabled\2\19required_width\3n\18last_modified\1\0\2\fenabled\2\19required_width\3X\ttype\1\0\2\fenabled\2\19required_width\3z\14file_size\1\0\2\fenabled\2\19required_width\3@\15git_status\fsymbols\1\0\0\1\0\t\runstaged\tÛ∞Ñ±\rmodified\5\fignored\bÔë¥\14untracked\bÔÑ®\frenamed\tÛ∞Åï\fdeleted\b‚úñ\nadded\5\rconflict\bÓúß\vstaged\bÔÅÜ\tname\1\0\3\14highlight\20NeoTreeFileName\26use_git_status_colors\2\19trailing_slash\1\rmodified\1\0\2\vsymbol\b[+]\14highlight\20NeoTreeModified\ticon\1\0\5\16folder_open\bÓóæ\14highlight\20NeoTreeFileIcon\18folder_closed\bÓóø\fdefault\6*\17folder_empty\tÛ∞úå\vindent\1\0\t\23expander_collapsed\bÔë†\14highlight\24NeoTreeIndentMarker\23last_indent_marker\b‚îî\18indent_marker\b‚îÇ\17with_markers\2\fpadding\3\1\16indent_size\3\2\23expander_highlight\20NeoTreeExpander\22expander_expanded\bÔëº\14container\1\0\0\1\0\1\26enable_character_fade\2$open_files_do_not_replace_types\1\4\0\0\rterminal\ftrouble\aqf\1\0\6\"enable_normal_mode_for_inputs\1\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\25close_if_last_window\1\26sort_case_insensitive\1\nsetup\rneo-tree\frequire\1\0\2\ttext\tÛ∞åµ\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\tÔÅö \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\tÔÅ± \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\tÔÅó \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn\bvim\0" },
    loaded = true,
    path = "/home/othon/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/othon/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire‹\3\1\0\n\0\29\00096\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\1B\1\1\0019\1\4\0005\3\19\0009\4\5\0009\4\6\0049\4\a\0045\6\t\0009\a\5\0009\a\b\a)\t¸ˇB\a\2\2=\a\n\0069\a\5\0009\a\b\a)\t\4\0B\a\2\2=\a\v\0069\a\5\0009\a\f\aB\a\1\2=\a\r\0069\a\5\0009\a\14\aB\a\1\2=\a\15\0069\a\5\0009\a\16\a5\t\17\0B\a\2\2=\a\18\6B\4\2\2=\4\5\0035\4\21\0003\5\20\0=\5\22\4=\4\23\0039\4\24\0009\4\25\0044\6\3\0005\a\26\0>\a\1\0065\a\27\0>\a\2\0064\a\3\0005\b\28\0>\b\1\aB\4\3\2=\4\25\3B\1\2\1K\0\1\0\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\fsnippet\vexpand\1\0\0\0\1\0\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\n<C-o>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\nsetup\14lazy_load luasnip.loaders.from_vscode\bcmp\frequire\0" },
    loaded = true,
    path = "/home/othon/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nd\0\0\6\0\6\0\v6\0\0\0006\2\1\0009\2\2\0026\4\1\0009\4\3\0049\4\4\0049\4\5\4B\4\1\0A\2\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprintË\6\1\1\b\0$\0ã\0016\1\0\0009\1\1\0019\2\2\0008\1\2\1'\2\4\0=\2\3\0015\1\5\0009\2\2\0=\2\6\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\n\0006\6\0\0009\6\v\0069\6\2\0069\6\f\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\r\0006\6\0\0009\6\v\0069\6\2\0069\6\14\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\15\0006\6\0\0009\6\v\0069\6\2\0069\6\16\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\17\0006\6\0\0009\6\v\0069\6\2\0069\6\18\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\19\0006\6\0\0009\6\v\0069\6\2\0069\6\20\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\21\0006\6\0\0009\6\v\0069\6\2\0069\6\22\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\23\0006\6\0\0009\6\v\0069\6\2\0069\6\24\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\25\0003\6\26\0\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\27\0006\6\0\0009\6\v\0069\6\2\0069\6\28\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\29\0006\6\0\0009\6\v\0069\6\2\0069\6\30\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\0025\4\31\0'\5 \0006\6\0\0009\6\v\0069\6\2\0069\6!\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\"\0006\6\0\0009\6\v\0069\6\2\0069\6#\6\18\a\1\0B\2\5\1K\0\1\0\15references\agr\16code_action\14<space>ca\1\3\0\0\6n\6v\vrename\14<space>rn\20type_definition\r<space>D\0\14<space>wl\28remove_workspace_folder\14<space>wr\25add_workspace_folder\14<space>wa\19signature_help\n<C-k>\19implementation\ag=\nhover\6K\15definition\agd\16declaration\blsp\agD\6n\bset\vkeymap\vbuffer\1\0\0\27v:lua.vim.lsp.omnifunc\romnifunc\bbuf\abo\bvimÙ\3\1\0\t\0\30\0>6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0014\3\0\0B\1\2\0019\1\4\0009\1\3\0014\3\0\0B\1\2\0019\1\5\0009\1\3\0015\3\b\0005\4\6\0004\5\0\0=\5\a\4=\4\t\3B\1\2\0016\1\n\0009\1\v\0019\1\f\1'\3\r\0'\4\14\0006\5\n\0009\5\15\0059\5\16\5B\1\4\0016\1\n\0009\1\v\0019\1\f\1'\3\r\0'\4\17\0006\5\n\0009\5\15\0059\5\18\5B\1\4\0016\1\n\0009\1\v\0019\1\f\1'\3\r\0'\4\19\0006\5\n\0009\5\15\0059\5\20\5B\1\4\0016\1\n\0009\1\21\0019\1\22\1'\3\23\0005\4\26\0006\5\n\0009\5\21\0059\5\24\5'\a\25\0004\b\0\0B\5\3\2=\5\27\0043\5\28\0=\5\29\4B\1\3\1K\0\1\0\rcallback\0\ngroup\1\0\0\18UserLspConfig\24nvim_create_augroup\14LspAttach\24nvim_create_autocmd\bapi\15setloclist\r<space>q\14goto_next\a]d\14goto_prev\15diagnostic\a[d\6n\bset\vkeymap\bvim\rsettings\1\0\0\18rust-analyzer\1\0\0\18rust_analyzer\rtsserver\nsetup\fpyright\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/othon/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/othon/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/othon/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/othon/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nÖ\n\0\0\v\0H\0á\0016\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0006\2\1\0'\4\3\0B\2\2\0026\3\1\0'\5\2\0B\3\2\0029\3\4\0035\5D\0005\6\5\0005\a\6\0=\a\a\0065\a3\0005\b\t\0009\t\b\2=\t\n\b9\t\v\2=\t\f\b9\t\r\2=\t\14\b9\t\15\2=\t\16\b9\t\17\2=\t\18\b9\t\r\2=\t\19\b9\t\15\2=\t\20\b9\t\21\2=\t\22\b9\t\23\2=\t\24\b9\t\25\2=\t\26\b9\t\27\2=\t\28\b9\t\29\2=\t\30\b9\t\31\2=\t \b9\t!\2=\t\"\b9\t#\2=\t$\b9\t%\0029\n&\2 \t\n\t=\t'\b9\t%\0029\n(\2 \t\n\t=\t)\b9\t*\0029\n+\2 \t\n\t=\t,\b9\t-\0029\n+\2 \t\n\t=\t.\b9\t/\2=\t0\b9\t1\2=\t2\b=\b4\a5\b5\0009\t\17\2=\t6\b9\t\21\2=\t\22\b9\t\23\2=\t\24\b9\t\25\2=\t\26\b9\t\27\2=\t\28\b9\t%\0029\n&\2 \t\n\t=\t'\b9\t%\0029\n(\2 \t\n\t=\t)\b9\t*\0029\n+\2 \t\n\t=\t,\b9\t-\0029\n+\2 \t\n\t=\t.\b9\t\r\2=\t7\b9\t\15\2=\t8\b9\t9\2=\t:\b9\t;\2=\t<\b9\t=\2=\t>\b9\t\r\2=\t\19\b9\t\15\2=\t\20\b9\t9\2=\t?\b9\t=\2=\t@\b9\t\29\2=\t\30\b9\t\31\2=\t \b9\t!\2=\t\"\b9\t#\2=\t$\b9\t1\2=\tA\b=\bB\a=\aC\6=\6E\0054\6\0\0=\6F\0054\6\0\0=\6G\5B\3\2\1K\0\1\0\15extensions\fpickers\rdefaults\1\0\0\rmappings\6n\6?\6G\agg\6L\19move_to_bottom\6M\19move_to_middle\6H\16move_to_top\6k\6j\n<esc>\1\0\0\6i\1\0\0\n<C-_>\14which_key\n<C-l>\17complete_tag\n<M-q>\28send_selected_to_qflist\n<C-q>\16open_qflist\19send_to_qflist\f<S-Tab>\26move_selection_better\n<Tab>\25move_selection_worse\21toggle_selection\15<PageDown>\27results_scrolling_down\r<PageUp>\25results_scrolling_up\n<C-d>\27preview_scrolling_down\n<C-u>\25preview_scrolling_up\n<C-t>\15select_tab\n<C-v>\20select_vertical\n<C-x>\22select_horizontal\t<CR>\19select_default\t<Up>\v<Down>\n<C-c>\nclose\n<C-k>\28move_selection_previous\n<C-j>\24move_selection_next\n<C-p>\23cycle_history_prev\n<C-n>\1\0\0\23cycle_history_next\17path_display\1\2\0\0\nsmart\1\0\2\18prompt_prefix\tÔë´ \20selection_caret\tÔÅ§ \nsetup\22telescope.actions\14telescope\frequire\npcall\0" },
    loaded = true,
    path = "/home/othon/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-fugitive"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/othon/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/othon/.local/share/nvim/site/pack/packer/opt/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: vim-unimpaired
time([[Setup for vim-unimpaired]], true)
try_loadstring("\27LJ\2\nµ\1\0\0\6\0\n\0\0176\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0'\3\4\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\24:<C-U>let @+=@*<CR>\6x\1\0\2\fnoremap\2\vsilent\2\19:let @+=@*<CR>\a]p\6n\20nvim_set_keymap\bapi\bvim\0", "setup", "vim-unimpaired")
time([[Setup for vim-unimpaired]], false)
time([[packadd for vim-unimpaired]], true)
vim.cmd [[packadd vim-unimpaired]]
time([[packadd for vim-unimpaired]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire‹\3\1\0\n\0\29\00096\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\1B\1\1\0019\1\4\0005\3\19\0009\4\5\0009\4\6\0049\4\a\0045\6\t\0009\a\5\0009\a\b\a)\t¸ˇB\a\2\2=\a\n\0069\a\5\0009\a\b\a)\t\4\0B\a\2\2=\a\v\0069\a\5\0009\a\f\aB\a\1\2=\a\r\0069\a\5\0009\a\14\aB\a\1\2=\a\15\0069\a\5\0009\a\16\a5\t\17\0B\a\2\2=\a\18\6B\4\2\2=\4\5\0035\4\21\0003\5\20\0=\5\22\4=\4\23\0039\4\24\0009\4\25\0044\6\3\0005\a\26\0>\a\1\0065\a\27\0>\a\2\0064\a\3\0005\b\28\0>\b\1\aB\4\3\2=\4\25\3B\1\2\1K\0\1\0\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\fsnippet\vexpand\1\0\0\0\1\0\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\n<C-o>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\nsetup\14lazy_load luasnip.loaders.from_vscode\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: gruvbox
time([[Config for gruvbox]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "gruvbox")
time([[Config for gruvbox]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: coc.nvim
time([[Config for coc.nvim]], true)
try_loadstring("\27LJ\2\nõ\1\0\0\6\0\b\2\0286\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\18Ä6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2\v\1\0\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0÷\2\0\0\a\0\19\00016\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\0015\3\5\0006\4\0\0009\4\6\0049\4\a\4B\1\3\2)\2\0\0\3\2\1\0X\1\bÄ6\1\0\0009\1\b\0019\1\t\1'\3\n\0\18\4\0\0&\3\4\3B\1\2\1X\1\24Ä6\1\0\0009\1\b\0019\1\v\1'\3\f\0B\1\2\2\15\0\1\0X\2\6Ä6\1\0\0009\1\1\0019\1\r\1'\3\14\0B\1\2\1X\1\vÄ6\1\0\0009\1\b\0019\1\t\1'\3\15\0006\4\0\0009\4\16\0049\4\17\4'\5\18\0\18\6\0\0&\3\6\3B\1\2\1K\0\1\0\6 \15keywordprg\6o\6!\fdoHover\19CocActionAsync\20coc#rpc#ready()\14nvim_eval\ah \17nvim_command\bapi\rfiletype\abo\1\3\0\0\bvim\thelp\nindex\f<cword>\vexpand\afn\bvimû\29\1\0\v\0t\0Õ\0026\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\1\0+\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1,\1=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0006\0\0\0009\0\a\0009\0\b\0006\1\t\0003\2\v\0=\2\n\0015\1\f\0\18\2\0\0'\4\r\0'\5\14\0'\6\15\0\18\a\1\0B\2\5\1\18\2\0\0'\4\r\0'\5\16\0'\6\17\0\18\a\1\0B\2\5\1\18\2\0\0'\4\r\0'\5\18\0'\6\19\0\18\a\1\0B\2\5\1\18\2\0\0'\4\r\0'\5\20\0'\6\21\0B\2\4\1\18\2\0\0'\4\r\0'\5\22\0'\6\23\0005\a\24\0B\2\5\0016\2\t\0003\3\26\0=\3\25\2\18\2\0\0'\4\27\0'\5\28\0'\6\29\0005\a\30\0B\2\5\0016\2\0\0009\2\31\0029\2 \2'\4!\0004\5\0\0B\2\3\0016\2\0\0009\2\31\0029\2\"\2'\4#\0005\5$\0B\2\3\1\18\2\0\0'\4\27\0'\5%\0'\6&\0005\a'\0B\2\5\1\18\2\0\0'\4(\0'\5)\0'\6*\0005\a+\0B\2\5\1\18\2\0\0'\4\27\0'\5)\0'\6*\0005\a,\0B\2\5\0016\2\0\0009\2\31\0029\2\"\2'\4-\0005\5.\0B\2\3\0016\2\0\0009\2\31\0029\2\"\2'\4/\0005\0050\0B\2\3\0015\0021\0\18\3\0\0'\5(\0'\0062\0'\a3\0\18\b\2\0B\3\5\1\18\3\0\0'\5\27\0'\0062\0'\a3\0\18\b\2\0B\3\5\1\18\3\0\0'\5\27\0'\0064\0'\a5\0\18\b\2\0B\3\5\1\18\3\0\0'\5\27\0'\0066\0'\a7\0\18\b\2\0B\3\5\1\18\3\0\0'\5\27\0'\0068\0'\a9\0\18\b\2\0B\3\5\1\18\3\0\0'\5\27\0'\6:\0'\a;\0005\b<\0B\3\5\1\18\3\0\0'\5(\0'\6=\0'\a>\0005\b?\0B\3\5\1\18\3\0\0'\5\27\0'\6=\0'\a>\0005\b@\0B\3\5\1\18\3\0\0'\5\27\0'\6A\0'\aB\0\18\b\2\0B\3\5\1\18\3\0\0'\5(\0'\6C\0'\aD\0\18\b\2\0B\3\5\1\18\3\0\0'\5E\0'\6C\0'\aD\0\18\b\2\0B\3\5\1\18\3\0\0'\5(\0'\6F\0'\aG\0\18\b\2\0B\3\5\1\18\3\0\0'\5E\0'\6F\0'\aG\0\18\b\2\0B\3\5\1\18\3\0\0'\5(\0'\6H\0'\aI\0\18\b\2\0B\3\5\1\18\3\0\0'\5E\0'\6H\0'\aI\0\18\b\2\0B\3\5\1\18\3\0\0'\5(\0'\6J\0'\aK\0\18\b\2\0B\3\5\1\18\3\0\0'\5E\0'\6J\0'\aK\0\18\b\2\0B\3\5\0015\3L\0\18\4\0\0'\6\27\0'\aM\0'\bN\0\18\t\3\0B\4\5\1\18\4\0\0'\6\27\0'\aO\0'\bP\0\18\t\3\0B\4\5\1\18\4\0\0'\6\r\0'\aM\0'\bQ\0\18\t\3\0B\4\5\1\18\4\0\0'\6\r\0'\aO\0'\bR\0\18\t\3\0B\4\5\1\18\4\0\0'\6S\0'\aM\0'\bN\0\18\t\3\0B\4\5\1\18\4\0\0'\6S\0'\aO\0'\bP\0\18\t\3\0B\4\5\1\18\4\0\0'\6\27\0'\aT\0'\bU\0005\tV\0B\4\5\1\18\4\0\0'\6(\0'\aT\0'\bU\0005\tW\0B\4\5\0016\4\0\0009\4\31\0049\4X\4'\6Y\0'\aZ\0004\b\0\0B\4\4\0016\4\0\0009\4\31\0049\4X\4'\6[\0'\a\\\0005\b]\0B\4\4\0016\4\0\0009\4\31\0049\4X\4'\6^\0'\a_\0004\b\0\0B\4\4\0016\4\0\0009\4\1\0049\4`\4\18\6\4\0009\4a\4'\ab\0B\4\3\0015\4c\0\18\5\0\0'\a\27\0'\bd\0'\te\0\18\n\4\0B\5\5\1\18\5\0\0'\a\27\0'\bf\0'\tg\0\18\n\4\0B\5\5\1\18\5\0\0'\a\27\0'\bh\0'\ti\0\18\n\4\0B\5\5\1\18\5\0\0'\a\27\0'\bj\0'\tk\0\18\n\4\0B\5\5\1\18\5\0\0'\a\27\0'\bl\0'\tm\0\18\n\4\0B\5\5\1\18\5\0\0'\a\27\0'\bn\0'\to\0\18\n\4\0B\5\5\1\18\5\0\0'\a\27\0'\bp\0'\tq\0\18\n\4\0B\5\5\1\18\5\0\0'\a\27\0'\br\0'\ts\0\18\n\4\0B\5\5\1K\0\1\0\28:<C-u>CocListResume<cr>\r<space>p\22:<C-u>CocPrev<cr>\r<space>k\22:<C-u>CocNext<cr>\r<space>j!:<C-u>CocList -I symbols<cr>\r<space>s\30:<C-u>CocList outline<cr>\r<space>o\31:<C-u>CocList commands<cr>\r<space>c!:<C-u>CocList extensions<cr>\r<space>e\":<C-u>CocList diagnostics<cr>\r<space>a\1\0\2\vsilent\2\vnowait\0028%{coc#status()}%{get(b:,'coc_current_function','')}\fprepend\15statuslineFcall CocActionAsync('runCommand', 'editor.action.organizeImport')\aOR\1\0\1\nnargs\6?%call CocAction('fold', <f-args>)\tFold\29call CocAction('format')\vFormat\29nvim_create_user_command\1\0\1\vsilent\2\1\0\1\vsilent\2\29<Plug>(coc-range-select)\n<C-s>\6vHcoc#float#has_scroll() ? \"<c-r>=coc#float#scroll(0)<cr>\" : \"<Left>\"Icoc#float#has_scroll() ? \"<c-r>=coc#float#scroll(1)<cr>\" : \"<Right>\";coc#float#has_scroll() ? coc#float#scroll(0) : \"<C-b>\"\n<C-b>;coc#float#has_scroll() ? coc#float#scroll(1) : \"<C-f>\"\n<C-f>\1\0\3\vnowait\2\texpr\2\vsilent\2\27<Plug>(coc-classobj-a)\aac\27<Plug>(coc-classobj-i)\aic\26<Plug>(coc-funcobj-a)\aaf\6o\26<Plug>(coc-funcobj-i)\aif <Plug>(coc-codelens-action)\15<leader>cl\1\0\1\vsilent\2\1\0\1\vsilent\2-<Plug>(coc-codeaction-refactor-selected)\14<leader>r\1\0\1\vsilent\2$<Plug>(coc-codeaction-refactor)\15<leader>re\28<Plug>(coc-fix-current)\15<leader>qf\"<Plug>(coc-codeaction-source)\15<leader>as\"<Plug>(coc-codeaction-cursor)\15<leader>ac$<Plug>(coc-codeaction-selected)\14<leader>a\1\0\2\vsilent\2\vnowait\2\1\0\4\fpattern\23CocJumpPlaceholder\ngroup\rCocGroup\fcommand-call CocActionAsync('showSignatureHelp')\tdesc.Update signature help on jump placeholder\tUser\1\0\4\fpattern\20typescript,json\ngroup\rCocGroup\fcommand0setl formatexpr=CocAction('formatSelected')\tdesc,Setup formatexpr specified filetype(s).\rFileType\1\0\1\vsilent\2\1\0\1\vsilent\2 <Plug>(coc-format-selected)\14<leader>f\6x\1\0\1\vsilent\2\23<Plug>(coc-rename)\15<leader>rn\1\0\3\tdesc0Highlight symbol under cursor on CursorHold\ngroup\rCocGroup\fcommand,silent call CocActionAsync('highlight')\15CursorHold\24nvim_create_autocmd\rCocGroup\24nvim_create_augroup\bapi\1\0\1\vsilent\2 <CMD>lua _G.show_docs()<CR>\6K\6n\0\14show_docs\1\0\2\vsilent\2\texpr\2\18coc#refresh()\14<c-space>%<Plug>(coc-snippets-expand-jump)\n<c-j>Ucoc#pum#visible() ? coc#pum#confirm() : \"\\<C-g>u\\<CR>\\<c-r>=coc#on_enter()\\<CR>\"\t<cr>3coc#pum#visible() ? coc#pum#prev(1) : \"\\<C-h>\"\f<S-TAB>]coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? \"<TAB>\" : coc#refresh()\n<TAB>\6i\1\0\4\vsilent\2\21replace_keycodes\1\fnoremap\2\texpr\2\0\21check_back_space\a_G\bset\vkeymap\byes\15signcolumn\15updatetime\16writebackup\vbackup\bopt\bvim\0", "config", "coc.nvim")
time([[Config for coc.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nd\0\0\6\0\6\0\v6\0\0\0006\2\1\0009\2\2\0026\4\1\0009\4\3\0049\4\4\0049\4\5\4B\4\1\0A\2\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprintË\6\1\1\b\0$\0ã\0016\1\0\0009\1\1\0019\2\2\0008\1\2\1'\2\4\0=\2\3\0015\1\5\0009\2\2\0=\2\6\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\n\0006\6\0\0009\6\v\0069\6\2\0069\6\f\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\r\0006\6\0\0009\6\v\0069\6\2\0069\6\14\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\15\0006\6\0\0009\6\v\0069\6\2\0069\6\16\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\17\0006\6\0\0009\6\v\0069\6\2\0069\6\18\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\19\0006\6\0\0009\6\v\0069\6\2\0069\6\20\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\21\0006\6\0\0009\6\v\0069\6\2\0069\6\22\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\23\0006\6\0\0009\6\v\0069\6\2\0069\6\24\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\25\0003\6\26\0\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\27\0006\6\0\0009\6\v\0069\6\2\0069\6\28\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\29\0006\6\0\0009\6\v\0069\6\2\0069\6\30\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\0025\4\31\0'\5 \0006\6\0\0009\6\v\0069\6\2\0069\6!\6\18\a\1\0B\2\5\0016\2\0\0009\2\a\0029\2\b\2'\4\t\0'\5\"\0006\6\0\0009\6\v\0069\6\2\0069\6#\6\18\a\1\0B\2\5\1K\0\1\0\15references\agr\16code_action\14<space>ca\1\3\0\0\6n\6v\vrename\14<space>rn\20type_definition\r<space>D\0\14<space>wl\28remove_workspace_folder\14<space>wr\25add_workspace_folder\14<space>wa\19signature_help\n<C-k>\19implementation\ag=\nhover\6K\15definition\agd\16declaration\blsp\agD\6n\bset\vkeymap\vbuffer\1\0\0\27v:lua.vim.lsp.omnifunc\romnifunc\bbuf\abo\bvimÙ\3\1\0\t\0\30\0>6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0014\3\0\0B\1\2\0019\1\4\0009\1\3\0014\3\0\0B\1\2\0019\1\5\0009\1\3\0015\3\b\0005\4\6\0004\5\0\0=\5\a\4=\4\t\3B\1\2\0016\1\n\0009\1\v\0019\1\f\1'\3\r\0'\4\14\0006\5\n\0009\5\15\0059\5\16\5B\1\4\0016\1\n\0009\1\v\0019\1\f\1'\3\r\0'\4\17\0006\5\n\0009\5\15\0059\5\18\5B\1\4\0016\1\n\0009\1\v\0019\1\f\1'\3\r\0'\4\19\0006\5\n\0009\5\15\0059\5\20\5B\1\4\0016\1\n\0009\1\21\0019\1\22\1'\3\23\0005\4\26\0006\5\n\0009\5\21\0059\5\24\5'\a\25\0004\b\0\0B\5\3\2=\5\27\0043\5\28\0=\5\29\4B\1\3\1K\0\1\0\rcallback\0\ngroup\1\0\0\18UserLspConfig\24nvim_create_augroup\14LspAttach\24nvim_create_autocmd\bapi\15setloclist\r<space>q\14goto_next\a]d\14goto_prev\15diagnostic\a[d\6n\bset\vkeymap\bvim\rsettings\1\0\0\18rust-analyzer\1\0\0\18rust_analyzer\rtsserver\nsetup\fpyright\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nÖ\n\0\0\v\0H\0á\0016\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0006\2\1\0'\4\3\0B\2\2\0026\3\1\0'\5\2\0B\3\2\0029\3\4\0035\5D\0005\6\5\0005\a\6\0=\a\a\0065\a3\0005\b\t\0009\t\b\2=\t\n\b9\t\v\2=\t\f\b9\t\r\2=\t\14\b9\t\15\2=\t\16\b9\t\17\2=\t\18\b9\t\r\2=\t\19\b9\t\15\2=\t\20\b9\t\21\2=\t\22\b9\t\23\2=\t\24\b9\t\25\2=\t\26\b9\t\27\2=\t\28\b9\t\29\2=\t\30\b9\t\31\2=\t \b9\t!\2=\t\"\b9\t#\2=\t$\b9\t%\0029\n&\2 \t\n\t=\t'\b9\t%\0029\n(\2 \t\n\t=\t)\b9\t*\0029\n+\2 \t\n\t=\t,\b9\t-\0029\n+\2 \t\n\t=\t.\b9\t/\2=\t0\b9\t1\2=\t2\b=\b4\a5\b5\0009\t\17\2=\t6\b9\t\21\2=\t\22\b9\t\23\2=\t\24\b9\t\25\2=\t\26\b9\t\27\2=\t\28\b9\t%\0029\n&\2 \t\n\t=\t'\b9\t%\0029\n(\2 \t\n\t=\t)\b9\t*\0029\n+\2 \t\n\t=\t,\b9\t-\0029\n+\2 \t\n\t=\t.\b9\t\r\2=\t7\b9\t\15\2=\t8\b9\t9\2=\t:\b9\t;\2=\t<\b9\t=\2=\t>\b9\t\r\2=\t\19\b9\t\15\2=\t\20\b9\t9\2=\t?\b9\t=\2=\t@\b9\t\29\2=\t\30\b9\t\31\2=\t \b9\t!\2=\t\"\b9\t#\2=\t$\b9\t1\2=\tA\b=\bB\a=\aC\6=\6E\0054\6\0\0=\6F\0054\6\0\0=\6G\5B\3\2\1K\0\1\0\15extensions\fpickers\rdefaults\1\0\0\rmappings\6n\6?\6G\agg\6L\19move_to_bottom\6M\19move_to_middle\6H\16move_to_top\6k\6j\n<esc>\1\0\0\6i\1\0\0\n<C-_>\14which_key\n<C-l>\17complete_tag\n<M-q>\28send_selected_to_qflist\n<C-q>\16open_qflist\19send_to_qflist\f<S-Tab>\26move_selection_better\n<Tab>\25move_selection_worse\21toggle_selection\15<PageDown>\27results_scrolling_down\r<PageUp>\25results_scrolling_up\n<C-d>\27preview_scrolling_down\n<C-u>\25preview_scrolling_up\n<C-t>\15select_tab\n<C-v>\20select_vertical\n<C-x>\22select_horizontal\t<CR>\19select_default\t<Up>\v<Down>\n<C-c>\nclose\n<C-k>\28move_selection_previous\n<C-j>\24move_selection_next\n<C-p>\23cycle_history_prev\n<C-n>\1\0\0\23cycle_history_next\17path_display\1\2\0\0\nsmart\1\0\2\18prompt_prefix\tÔë´ \20selection_caret\tÔÅ§ \nsetup\22telescope.actions\14telescope\frequire\npcall\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: vim-fugitive
time([[Config for vim-fugitive]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "vim-fugitive")
time([[Config for vim-fugitive]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\nô!\0\0\b\0|\0≥\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\4\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\t\0005\3\n\0B\0\3\0016\0\v\0'\2\f\0B\0\2\0029\0\r\0005\2\14\0005\3\15\0=\3\16\0025\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\29\0005\5\28\0=\5\30\4=\4\31\0035\4 \0=\4!\0035\4\"\0=\4#\0035\4$\0=\4%\0035\4&\0=\4'\0035\4(\0=\4)\3=\3*\0024\3\0\0=\3+\0025\3,\0005\4-\0=\4.\0035\0040\0005\5/\0=\0051\0045\0052\0005\0063\0=\0064\5=\0055\0045\0056\0005\0067\0=\0064\5=\0058\4=\0049\3=\3:\0024\3\0\0=\3;\0025\3B\0005\4<\0004\5\0\0=\5=\0044\5\0\0=\5>\0044\5\0\0=\5?\0044\5\0\0=\5@\0044\5\0\0=\5A\4=\4C\0035\4D\0=\4E\0035\4X\0005\5F\0005\6G\0005\aH\0=\a4\6=\6I\0055\6J\0=\6K\0055\6L\0=\6M\0055\6N\0=\6O\0055\6P\0=\6Q\0055\6R\0=\6S\0055\6T\0=\6U\0055\6V\0=\6W\5=\0059\0045\5Y\0=\5Z\4=\4:\0034\4\0\0=\4+\3=\3[\0025\3]\0005\4\\\0=\4E\0035\4g\0005\5^\0005\6_\0005\a`\0=\a4\6=\6I\0055\6a\0=\6K\0055\6b\0=\6M\0055\6c\0=\6Q\0055\6d\0=\6S\0055\6e\0=\6U\0055\6f\0=\6W\5=\0059\4=\4:\3=\3h\0025\3s\0005\4i\0005\5j\0005\6k\0005\al\0=\a4\6=\6I\0055\6m\0=\6K\0055\6n\0=\6M\0055\6o\0=\6Q\0055\6p\0=\6S\0055\6q\0=\6U\0055\6r\0=\6W\5=\0059\4=\4:\3=\3\31\2B\0\2\0016\0\0\0009\0t\0'\2u\0B\0\2\0016\0\0\0009\0v\0009\0w\0'\2x\0'\3y\0'\4z\0005\5{\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2):Neotree filesystem reveal float<CR>\15<leader>fe\6n\20nvim_set_keymap\bapi#nnoremap \\ :Neotree reveal<cr>\bcmd\1\0\0\1\2\1\0\18order_by_type\vnowait\1\1\2\1\0\18order_by_size\vnowait\1\1\2\1\0\18order_by_name\vnowait\1\1\2\1\0\22order_by_modified\vnowait\1\1\2\1\0\25order_by_diagnostics\vnowait\1\1\2\1\0\21order_by_created\vnowait\1\1\0\2\ntitle\rOrder by\15prefix_key\6o\1\2\1\0\14show_help\vnowait\1\1\0\a\agg\24git_commit_and_push\agc\15git_commit\agr\20git_revert_file\aga\17git_add_file\agu\21git_unstage_file\6A\16git_add_all\agp\rgit_push\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\2\1\0\18order_by_type\vnowait\1\1\2\1\0\18order_by_size\vnowait\1\1\2\1\0\18order_by_name\vnowait\1\1\2\1\0\22order_by_modified\vnowait\1\1\2\1\0\25order_by_diagnostics\vnowait\1\1\2\1\0\21order_by_created\vnowait\1\1\0\2\ntitle\rOrder by\15prefix_key\6o\1\2\1\0\14show_help\vnowait\1\1\0\3\6.\rset_root\abd\18buffer_delete\t<bs>\16navigate_up\1\0\2\21group_empty_dirs\2\18show_unloaded\2\1\0\2\fenabled\2\20leave_dirs_open\1\15filesystem\26fuzzy_finder_mappings\1\0\4\n<C-n>\21move_cursor_down\n<C-p>\19move_cursor_up\v<down>\21move_cursor_down\t<up>\19move_cursor_up\1\0\0\aot\1\2\1\0\18order_by_type\vnowait\1\aos\1\2\1\0\18order_by_size\vnowait\1\aon\1\2\1\0\18order_by_name\vnowait\1\aom\1\2\1\0\22order_by_modified\vnowait\1\aog\1\2\1\0\24order_by_git_status\vnowait\1\aod\1\2\1\0\25order_by_diagnostics\vnowait\1\aoc\1\2\1\0\21order_by_created\vnowait\1\6o\1\0\2\ntitle\rOrder by\15prefix_key\6o\1\2\1\0\14show_help\vnowait\1\1\0\n\6f\21filter_on_submit\6.\rset_root\6#\17fuzzy_sorter\6/\17fuzzy_finder\a[g\22prev_git_modified\n<c-x>\17clear_filter\a]g\22next_git_modified\6D\27fuzzy_finder_directory\6H\18toggle_hidden\t<bs>\16navigate_up\24follow_current_file\1\0\2\fenabled\1\20leave_dirs_open\1\19filtered_items\1\0\3\21group_empty_dirs\1\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\2\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\f<space>\1\0\24\6t\16open_tabnew\6d\vdelete\6z\20close_all_nodes\6s\16open_vsplit\6C\15close_node\6l\18focus_preview\6x\21cut_to_clipboard\6w\28open_with_window_picker\6c\tcopy\6S\15open_split\6m\tmove\6q\17close_window\t<cr>\topen\n<esc>\vcancel\18<2-LeftMouse>\topen\6R\frefresh\6>\16next_source\6<\16prev_source\6i\22show_file_details\6?\14show_help\6p\25paste_from_clipboard\6y\22copy_to_clipboard\6A\18add_directory\6r\vrename\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\2\rposition\tleft\nwidth\3(\rcommands\30default_component_configs\19symlink_target\1\0\1\fenabled\1\fcreated\1\0\2\fenabled\2\19required_width\3n\18last_modified\1\0\2\fenabled\2\19required_width\3X\ttype\1\0\2\fenabled\2\19required_width\3z\14file_size\1\0\2\fenabled\2\19required_width\3@\15git_status\fsymbols\1\0\0\1\0\t\runstaged\tÛ∞Ñ±\rmodified\5\fignored\bÔë¥\14untracked\bÔÑ®\frenamed\tÛ∞Åï\fdeleted\b‚úñ\nadded\5\rconflict\bÓúß\vstaged\bÔÅÜ\tname\1\0\3\14highlight\20NeoTreeFileName\26use_git_status_colors\2\19trailing_slash\1\rmodified\1\0\2\vsymbol\b[+]\14highlight\20NeoTreeModified\ticon\1\0\5\16folder_open\bÓóæ\14highlight\20NeoTreeFileIcon\18folder_closed\bÓóø\fdefault\6*\17folder_empty\tÛ∞úå\vindent\1\0\t\23expander_collapsed\bÔë†\14highlight\24NeoTreeIndentMarker\23last_indent_marker\b‚îî\18indent_marker\b‚îÇ\17with_markers\2\fpadding\3\1\16indent_size\3\2\23expander_highlight\20NeoTreeExpander\22expander_expanded\bÔëº\14container\1\0\0\1\0\1\26enable_character_fade\2$open_files_do_not_replace_types\1\4\0\0\rterminal\ftrouble\aqf\1\0\6\"enable_normal_mode_for_inputs\1\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\25close_if_last_window\1\26sort_case_insensitive\1\nsetup\rneo-tree\frequire\1\0\2\ttext\tÛ∞åµ\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\tÔÅö \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\tÔÅ± \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\tÔÅó \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn\bvim\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: fzf
time([[Config for fzf]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "fzf")
time([[Config for fzf]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
