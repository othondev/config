require("othondev.base")
require("othondev.mapping")

-- Automatic installation of Packer.nvim if not installed
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
end

require("othondev.plugins")

-- colorscheme config: kanagawa
local themeStatus, kanagawa = pcall(require, "kanagawa")

if themeStatus then
    vim.cmd("colorscheme kanagawa")
else
    return
end
