let mapleader = ','
nnoremap <Leader>w :up<CR>
nnoremap <Leader>q :quit<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>n :edit new<CR>
nnoremap <S-q> <Nop>
nnoremap ; :
vnoremap ; :
inoremap kj <Esc>
vnoremap kj <Esc>
nnoremap <Space> :nohlsearch<CR>
nnoremap <Leader>v :vertical split<CR>
nnoremap <Leader>h :split<CR>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <CR> o<Esc>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <Leader>c :bdelete<CR>
nnoremap <Leader>p "+p
vnoremap <Leader>y "+y
nnoremap <C-a> ggVG
nnoremap <Leader>a ggVG
nnoremap <leader>Y ggVG"+y
" The ones below are now done by the plugin 'targets'
" onoremap i, :<C-u>normal! T,vt,<CR>
" vnoremap i, :<C-u>normal! T,vt,<CR>
" onoremap a, :<C-u>normal! F,vt,<CR>
" vnoremap a, :<C-u>normal! F,vt,<CR>
tnoremap <Esc> <C-\><C-n>
nnoremap <Leader>t :terminal<CR>
tnoremap <C-j> <C-\><C-n><C-W>j
tnoremap <C-k> <C-\><C-n><C-W>k
tnoremap <C-h> <C-\><C-n><C-W>h
tnoremap <C-l> <C-\><C-n><C-W>l
" To move lines with Alt + {jk} like Sublime
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
nnoremap / /\v
vnoremap / /\v
vmap > >gv
vmap < <gv
nnoremap 0 ^
vnoremap 0 ^
nnoremap ^ 0
vnoremap ^ 0
nnoremap <F5> :source ~/.config/nvim/init.vim<CR>
cnoremap <C-j> <Down>
