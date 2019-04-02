syntax on

set number
set cursorline
set nowrap
set scrolloff=7
set sidescrolloff=5
" set colorcolumn=80
set wildmenu
set concealcursor=nc
set conceallevel=0

" Useful when using macros, makes running them multiple times much faster
set lazyredraw

" Tab related
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Search related
set incsearch
set hlsearch
set ignorecase
set smartcase

set hidden

" set completeopt-=preview
if !isdirectory("~/.config/nvim/undo/")
    silent !mkdir ~/.config/nvim/undo > /dev/null 2>&1
endif
set undofile
set undodir=$HOME/.config/nvim/undo
set noswapfile

set foldlevel=3

set splitright
set splitbelow

set inccommand=split

" Show arrow if line continues rightwards
set listchars=extends:→

set termguicolors
set background=dark

set mouse=a

set diffopt+=vertical

set updatetime=100

set noshowmode

let g:python_host_prog = '/Users/agmarquez/.virtualenvs/neovim2/bin/python2.7'
let g:python3_host_prog = '/Users/agmarquez/.virtualenvs/neovim3/bin/python3.6'
