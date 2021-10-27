vim.g.mapleader = ' '

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.number = true
vim.opt.relativenumber = true

local keymap = vim.api.nvim_set_keymap

local opts = { noremap = true }

keymap('n', ';', ':', opts)

keymap('n', '<Leader>q', ':q<CR>', opts)
keymap('n', '<Leader>w', ':w<CR>', opts)
keymap('n', '<Leader>x', ':x<CR>', opts)

keymap('n', '<Leader>h', ':split<CR>', opts)
keymap('n', '<Leader>v', ':vert split<CR>', opts)

keymap('n', 'gb', ':bn<CR>', opts)
keymap('n', 'gB', ':bp<CR>', opts)

keymap('n', '<c-j>', '<c-w><c-j>', opts)
keymap('n', '<c-k>', '<c-w><c-k>', opts)
keymap('n', '<c-h>', '<c-w><c-h>', opts)
keymap('n', '<c-l>', '<c-w><c-l>', opts)

require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'morhetz/gruvbox'
    use 'Mofiqul/dracula.nvim'
end)
