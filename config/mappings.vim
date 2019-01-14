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
" vnoremap kj <Esc>
cnoremap kj <Esc>
nnoremap <Space> :nohlsearch<CR>
nnoremap <CR> o<Esc>
nnoremap <Leader>p "+p
vnoremap <Leader>y "+y
" nnoremap <C-a> ggVG
nnoremap <leader>Y ggVG"+y
" nnoremap / /\v
" vnoremap / /\v
vmap > >gv
vmap < <gv
nnoremap 0 ^
vnoremap 0 ^
nnoremap ^ 0
vnoremap ^ 0
nnoremap ` '
nnoremap ' `

" Navigation
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <Leader>v :vertical split<CR>
nnoremap <Leader>h :split<CR>

" Easiear navigation in the command line
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>

" The ones below are now done by the plugin 'targets'
" onoremap i, :<C-u>normal! T,vt,<CR>
" vnoremap i, :<C-u>normal! T,vt,<CR>
" onoremap a, :<C-u>normal! F,vt,<CR>
" vnoremap a, :<C-u>normal! F,vt,<CR>

" Terminal mappings
tnoremap <Esc> <C-\><C-n>
nnoremap <Leader>t :terminal<CR>
tnoremap <C-j> <C-\><C-n><C-W>j
tnoremap <C-k> <C-\><C-n><C-W>k
tnoremap <C-h> <C-\><C-n><C-W>h
tnoremap <C-l> <C-\><C-n><C-W>l

" " To move lines with Alt + {jk} like Sublime
" nmap <M-j> mz:m+<CR>`z
" nmap ∆ :m+<CR>
" nmap <M-k> mz:m-2<CR>`z
" nmap ˚ :m-2<CR>
" vmap <M-j> :m'>+<CR>`<my`>mzgv`yo`z
" vmap <M-k> :m'<-2<CR>`>my`<mzgv`yo`z

" nnoremap <M-j> :cn<CR>
nnoremap ∆ :cn<CR>
" nnoremap <M-k> :cp<CR>
nnoremap ˚ :cp<CR>

nnoremap <F5> :source ~/.config/nvim/init.vim<CR>

" Windows
nnoremap <F8> :vertical resize 80<CR>

" Resizing
nnoremap <C-left> :vertical resize -1<CR>
nnoremap <C-right> :vertical resize +1<CR>
nnoremap <C-up> :resize +1<CR>
nnoremap <C-down> :resize -1<CR>
