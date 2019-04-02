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
" if !isdirectory("~/.config/nvim/undo/")
"     silent !mkdir ~/.config/nvim/undo > /dev/null 2>&1
" endif
" set undofile
" set undodir=$HOME/.config/nvim/undo
" set noswapfile

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

" let g:python_host_prog = '/Users/agmarquez/.virtualenvs/neovim2/bin/python2.7'
" let g:python3_host_prog = '/Users/agmarquez/.virtualenvs/neovim3/bin/python3.6'

let mapleader = ','

" Regular settings
nnoremap <Leader>w :update<CR>
nnoremap <Leader>q :quit<CR>
nnoremap <Leader>x :exit<CR>
nnoremap <Leader>n :enew<CR>
nnoremap <Leader>c :Bdelete<CR>

" Personal preferences
nnoremap <S-q> <Nop>
nnoremap ; :
vnoremap ; :
inoremap kj <Esc>
vnoremap kj <Esc>
cnoremap kj <Esc>
nnoremap <Space> :nohlsearch<CR>
nnoremap <CR> o<Esc>
" nnoremap / /\v
" vnoremap / /\v
vmap > >gv
vmap < <gv

" Swapped this commands
nnoremap 0 ^
vnoremap 0 ^
nnoremap ^ 0
vnoremap ^ 0
nnoremap ` '
nnoremap ' `

" Clipboard related
nnoremap <Leader>p "+p
vnoremap <Leader>y "+y
" nnoremap <C-a> ggVG
nnoremap <leader>Y ggVG"+y

" Navigation
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>

" nnoremap <Tab> :bnext<CR>
" nnoremap <S-Tab> :bprevious<CR>
nnoremap <Leader>v :vertical split<CR>
nnoremap <Leader>h :split<CR>

" Easiear navigation in the command line
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>

" " Terminal mappings
" " tnoremap <Esc> <C-\><C-n>
" nnoremap <Leader>t :terminal<CR>
" tnoremap <C-j> <C-\><C-n><C-W>j
" tnoremap <C-k> <C-\><C-n><C-W>k
" tnoremap <C-h> <C-\><C-n><C-W>h
" tnoremap <C-l> <C-\><C-n><C-W>l

" Quickfix maps
" nnoremap <M-j> :cn<CR>
" nnoremap <M-k> :cp<CR>
" Quickfix maps for macos
nnoremap ∆ :cn<CR>
nnoremap ˚ :cp<CR>

" nnoremap <F5> :source ~/.config/nvim/init.vim<CR>

" Windows
" nnoremap <F8> :vertical resize 80<CR>

" Resizing
nnoremap <C-left> :vertical resize -1<CR>
nnoremap <C-right> :vertical resize +1<CR>
nnoremap <C-up> :resize +1<CR>
nnoremap <C-down> :resize -1<CR>

" Useful to compare files
nnoremap <Leader>z :windo set cursorbind! \| windo set scrollbind!<CR>
