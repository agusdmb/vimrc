syntax on
set number
" set relativenumber
set cursorline
set lazyredraw
set nowrap
set wrapmargin=79
set textwidth=79
set scrolloff=7
set sidescrolloff=5
set colorcolumn=80
set wildmenu
set concealcursor=nc
set conceallevel=0
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set incsearch
set hlsearch
set ignorecase
set smartcase
set hidden
set completeopt=menuone,noinsert,noselect,preview
if !isdirectory("~/.config/nvim/undo/")
    silent !mkdir ~/.config/nvim/undo > /dev/null 2>&1
endif
set undofile
set undodir=$HOME/.config/nvim/undo
set noswapfile
set foldlevel=2
" set splitright
" set splitbelow
" set guifont=DroidSansMono\ Nerd\ Font

set inccommand=split

" Show arrow if line continues rightwards
set listchars=extends:→

set termguicolors
set background=dark
