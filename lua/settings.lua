vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
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
vim.opt.undodir = '/home/agusdmb/.config/nvim/undo'
vim.opt.virtualedit = 'block'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wildignore = {'*.pyc', '**/node_modules/*'}
vim.opt.path = {'**/*'}

--Incremental live completion (note: this is now a default on master)
vim.o.inccommand = 'nosplit'
--Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true
--Do not save when switching buffers (note: this is now a default on master)
vim.o.hidden = true
--Enable mouse mode
vim.o.mouse = 'a'
--Enable break indent
vim.o.breakindent = true
--Save undo history
vim.opt.undofile = true
--Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true
--Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'
