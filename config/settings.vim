syntax on

set number
set relativenumber
set cursorline
set nowrap
" set textwidth=120
set concealcursor=nc
set conceallevel=0

" Useful when using macros, makes running them multiple times much faster
set lazyredraw

" Indent related
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=2

set linebreak

" Search related
set ignorecase
set smartcase
set wildignore=*.pyc,**/node_modules/*

set hidden

if !isdirectory("~/.config/nvim/undo/")
    silent !mkdir ~/.config/nvim/undo > /dev/null 2>&1
endif
set undofile
set undodir=$HOME/.config/nvim/undo
set noswapfile

set foldlevel=99
" set foldmethod=expr
" set foldexpr=nvim_treesitter#foldexpr()

set splitright
set splitbelow

set inccommand=split

" set termguicolors
set background=dark
" colorscheme monokai

set scrolloff=5

set mouse=a

set diffopt+=vertical

set updatetime=100

set noshowmode

set nojoinspaces

" set spelllang=en_us,es
" set spell

set virtualedit=block

set clipboard=unnamedplus

let g:python_host_prog = '/home/agusdmb/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/home/agusdmb/.pyenv/versions/neovim3/bin/python'
