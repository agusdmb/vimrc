vim.g.mapleader = ' '

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.lazyredraw = true
vim.opt.linebreak = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.scrolloff = 3

vim.opt.hidden = true
vim.opt.joinspaces = false

vim.opt.undofile = true
vim.opt.undodir = '$HOME/.config/nvim/undo'

vim.opt.virtualedit = 'block'

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wildignore = {'*.pyc', '**/node_modules/*'}
vim.opt.path = {'**/*'}

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

keymap('n', '<Leader>p', '"+p', opts)
keymap('n', '<Leader>y', '"+y', opts)
keymap('v', '<Leader>p', '"+p', opts)
keymap('v', '<Leader>y', '"+y', opts)

require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use {
        'Mofiqul/dracula.nvim',
        config = vim.cmd[[colorscheme dracula]]
    }
    use {
        'morhetz/gruvbox',
        -- config = vim.cmd[[colorscheme gruvbox]]
    }
    use {
        'neovim/nvim-lspconfig',
        'williamboman/nvim-lsp-installer',
    }
end)

local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'pyright', 'tsserver' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end