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

set completeopt=menu,preview,noinsert,menuone
set complete=.,w,b,u,U,i,d,t,k

set ignorecase
set smartcase

set hidden

let g:netrw_hide = 1
let g:netrw_liststyle = 3
