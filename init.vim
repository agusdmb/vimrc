colorscheme peachpuff

let mapleader = ' '

set number
set relativenumber

set cursorline

set path=**/*

set scrolloff=3

set completeopt=menu,preview,menuone
set complete=.,w,b,u,U,i,d,t,k

set ignorecase
set smartcase

set hidden

set splitright
set splitbelow

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

nnoremap <c-left> :vert resize -10<cr>
nnoremap <c-right> :vert resize +10<cr>
nnoremap <c-down> :vert resize -10<cr>
nnoremap <c-up> :vert resize +10<cr>

nnoremap <F5> :source $MYVIMRC<cr>

for c in ['"', '[', "'", ']', '(', ')']
  execute 'nnoremap <leader>'.c 'viw<esc>a'.c.'<esc>bi'.c.'<esc>'
endfor

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20

nnoremap <leader>e :Vexplore<cr>
