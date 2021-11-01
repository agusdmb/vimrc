local keymap = vim.api.nvim_set_keymap

local opts_noremap = { noremap = true, silent = true }

--Remap space as leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', opts_noremap)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

keymap('n', ';', ':', opts_noremap)
keymap('n', '<Leader>q', ':q<CR>', opts_noremap)
keymap('n', '<Leader>w', ':w<CR>', opts_noremap)
keymap('n', '<Leader>x', ':x<CR>', opts_noremap)
keymap('n', '<Leader>h', ':split<CR>', opts_noremap)
keymap('n', '<Leader>v', ':vert split<CR>', opts_noremap)
keymap('n', 'gb', ':bn<CR>', opts_noremap)
keymap('n', 'gB', ':bp<CR>', opts_noremap)
keymap('n', '<c-j>', '<c-w><c-j>', opts_noremap)
keymap('n', '<c-k>', '<c-w><c-k>', opts_noremap)
keymap('n', '<c-h>', '<c-w><c-h>', opts_noremap)
keymap('n', '<c-l>', '<c-w><c-l>', opts_noremap)
keymap('n', '<Leader>p', '"+p', opts_noremap)
keymap('n', '<Leader>y', '"+y', opts_noremap)
keymap('v', '<Leader>p', '"+p', opts_noremap)
keymap('v', '<Leader>y', '"+y', opts_noremap)
