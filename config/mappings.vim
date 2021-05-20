let mapleader = ' '

" Regular settings
nnoremap <Leader>w :update<CR>
nnoremap <Leader>q :quit<CR>
nnoremap <Leader>x :exit<CR>
nnoremap <Leader>c :Bdelete<CR>
nnoremap <Leader>C :bdelete!<CR>

" Personal preferences
nnoremap <S-q> <Nop>
nnoremap ; :
vnoremap ; :
nnoremap <Space> :nohlsearch<CR>
vmap > >gv
vmap < <gv

" Swapped this commands
nnoremap ` '
nnoremap ' `

" Clipboard related
nnoremap <Leader>p "+p
nnoremap <Leader>y "+y
vnoremap <Leader>y "+y

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

nnoremap <Leader>v :vertical split<CR>
nnoremap <Leader>h :split<CR>

" Easiear navigation in the command line
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>

" Terminal mappings
tnoremap <C-j> <C-\><C-n><C-W>j
tnoremap <C-k> <C-\><C-n><C-W>k
tnoremap <C-h> <C-\><C-n><C-W>h
tnoremap <C-l> <C-\><C-n><C-W>l
tnoremap <Esc> <C-\><C-n>

" Quickfix maps
nnoremap <M-j> :cnext<CR>
nnoremap <M-k> :cprevious<CR>

inoremap <C-v> <Esc>pi

nnoremap <F5> :source ~/.config/nvim/init.vim<CR>

" Resizing
nnoremap <C-left> :vertical resize -1<CR>
nnoremap <C-right> :vertical resize +1<CR>
nnoremap <C-up> :resize +1<CR>
nnoremap <C-down> :resize -1<CR>

" Search in all args or all python files
nnoremap <Leader>a :vim /<C-R>=expand("<cword>")<CR>/g ##<CR>
nnoremap <Leader>A :vim /<C-R>=expand("<cword>")<CR>/g **/*.py<CR>

" Avoid adding to jumping list
nnoremap } :keepjumps normal! }<CR>
nnoremap { :keepjumps normal! {<CR>
nnoremap n :keepjumps normal! n<CR>
nnoremap N :keepjumps normal! N<CR>

" Avoid * jumping to next ocurrence
nnoremap * :keepjumps normal! *N<CR>
