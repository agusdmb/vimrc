if has('vim_starting')
    set nocompatible               " Be iMproved
endif

let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

let g:vim_bootstrap_langs = ""
let g:vim_bootstrap_editor = "nvim"             " nvim or vim

if !filereadable(vimplug_exists)
    if !executable("curl")
        echoerr "You have to install curl or first install vim-plug yourself!"
        execute "q!"
    endif
    echo "Installing Vim-Plug..."
    echo ""
    silent !\curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let g:not_finish_vimplug = "yes"

    autocmd VimEnter * PlugInstall
endif

call plug#begin(expand('~/.config/nvim/plugged'))

Plug 'morhetz/gruvbox'

call plug#end()

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

colorscheme slate

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

set showtabline=2
set showmode

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

" let g:python_host_prog = '/Users/agmarquez/.virtualenvs/neovim2/bin/python2.7'
let g:python3_host_prog = '/home/agusdmb/.pyenv/versions/neovim3/bin/python'

let mapleader = ' '

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
" inoremap kj <Esc>
" vnoremap kj <Esc>
" cnoremap kj <Esc>
nnoremap <Space> :nohlsearch<CR>
" nnoremap <CR> o<Esc>
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
" nnoremap <Leader>p "+p
" vnoremap <Leader>y "+y
" nnoremap <C-a> ggVG
" nnoremap <leader>Y ggVG"+y
set clipboard+=unnamedplus

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
nnoremap <M-n> :cn<CR>
nnoremap <M-p> :cp<CR>

" nnoremap <F5> :source ~/.config/nvim/init.vim<CR>

" Windows
" nnoremap <F8> :vertical resize 80<CR>

" Resizing
nnoremap <C-left> :vertical resize -1<CR>
nnoremap <C-right> :vertical resize +1<CR>
nnoremap <C-up> :resize +1<CR>
nnoremap <C-down> :resize -1<CR>

" Useful to compare files (not working)
" nnoremap <Leader>z :windo set cursorbind! \| windo set scrollbind!<CR>

nnoremap gn :gb<CR>
nnoremap gN :gB<CR>

" Avoid adding to jumping list
nnoremap } :keepjumps normal! }<CR>
nnoremap { :keepjumps normal! {<CR>
nnoremap n :keepjumps normal! n<CR>
nnoremap N :keepjumps normal! N<CR>

" Avoid * jumping to next ocurrence
nnoremap * m' :keepjumps normal! *N<CR>

set path+=**
set wildignore=*.pyc

" compiler pylint
" make %

" gruvbox {{{
    if !exists('g:not_finish_vimplug')
      let g:gruvbox_italic=1
      let g:gruvbox_contrast_dark='normal'
      let g:gruvbox_contrast_light='normal'
      let g:gruvbox_sign_column='bg0'
      colorscheme gruvbox
    endif
" }}}

