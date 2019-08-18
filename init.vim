colorscheme peachpuff

let mapleader = ','

nnoremap ; :
vnoremap ; :

nnoremap <leader>q :quit<cr>
nnoremap <leader>w :update<cr>
nnoremap <leader>x :exit<cr>

nnoremap gb :bnext<cr>
nnoremap gB :bprev<cr>

nnoremap <leader>h :split<cr>
nnoremap <leader>v :vertical split<cr>

nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

set number
set relativenumber

set cursorline

set path=**

set scrolloff=7

set completeopt=menu,preview,menuone
set complete=.,w,b,u,U,i,d,t,k

set ignorecase
set smartcase

set hidden

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20

nnoremap <leader>e :Vexplore<cr>

" Only usefull with my pyenv configuration
let g:python_host_prog = '/Users/agmarquez/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/agmarquez/.pyenv/versions/neovim3/bin/python'
