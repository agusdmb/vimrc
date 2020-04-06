let mapleader = ','

" Regular settings
nnoremap <Leader>w :update<CR>
nnoremap <Leader>q :quit<CR>
nnoremap <Leader>x :exit<CR>
nnoremap <Leader>c :Bdelete<CR>

" Personal preferences
nnoremap <S-q> <Nop>
nnoremap ; :
vnoremap ; :
" inoremap kj <Esc>
" vnoremap kj <Esc>
" cnoremap kj <Esc>
nnoremap <Space> :nohlsearch<CR>
" nnoremap / /\v
" vnoremap / /\v
vmap > >gv
vmap < <gv

" Swapped this commands
" nnoremap 0 ^
" vnoremap 0 ^
" nnoremap ^ 0
" vnoremap ^ 0
nnoremap ` '
nnoremap ' `

" Clipboard related
nnoremap <Leader>p "+p
nnoremap <Leader>y "+y
vnoremap <Leader>y "+y
" nnoremap <C-a> ggVG
" nnoremap <leader>Y ggVG"+y

" Copy multiple time, paste once
nnoremap <Leader>M "myy
vnoremap <Leader>M "my
nnoremap <Leader>m "Myy
vnoremap <Leader>m "My

" Navigation
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>

nnoremap gb :bn<CR>
nnoremap gB :bp<CR>

" nnoremap <Tab> :bnext<CR>
" nnoremap <S-Tab> :bprevious<CR>
nnoremap <Leader>v :vertical split<CR>
nnoremap <Leader>h :split<CR>

" Easiear navigation in the command line
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>

" Terminal mappings
" tnoremap <Esc> <C-\><C-n>
" nnoremap <Leader>t :terminal<CR>
tnoremap <C-j> <C-\><C-n><C-W>j
tnoremap <C-k> <C-\><C-n><C-W>k
tnoremap <C-h> <C-\><C-n><C-W>h
tnoremap <C-l> <C-\><C-n><C-W>l

" Quickfix maps
nnoremap <M-j> :cn<CR>
nnoremap <M-k> :cp<CR>

nnoremap <F5> :source ~/.config/nvim/init.vim<CR>

" " Resizing (doesn't work in macos)
" nnoremap <C-left> :vertical resize -1<CR>
" nnoremap <C-right> :vertical resize +1<CR>
" nnoremap <C-up> :resize +1<CR>
" nnoremap <C-down> :resize -1<CR>

" Useful to compare files
nnoremap <Leader>z :windo set cursorbind! \| windo set scrollbind!<CR>

" " Center screen on next/previous selection.
" nnoremap n nzz
" nnoremap N Nzz
" " Last and next jump should center too.
" nnoremap <C-o> <C-o>zz
" nnoremap <C-i> <C-i>zz

nnoremap <Leader>a :vim //g ##<CR>
nnoremap <Leader>A :vim //g **/*.py<CR>
