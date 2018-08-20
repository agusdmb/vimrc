call plug#begin(expand('~/.config/nvim/plugged'))

""""""""""""""""""""
" General
""""""""""""""""""""

" Plug 'AndrewRadev/splitjoin.vim'
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" Plug 'junegunn/vim-easy-align'
" Plug 'valloric/MatchTagAlways'
" Plug 'xolox/vim-misc' | Plug 'xolox/vim-session'
Plug 'Chiel92/vim-autoformat'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'christoomey/vim-tmux-navigator'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } | Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-slash'
Plug 'kana/vim-textobj-indent' | Plug 'kana/vim-textobj-user'
Plug 'mhinz/vim-startify'
Plug 'moll/vim-bbye'
Plug 'nelstrom/vim-visual-star-search'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'sjl/gundo.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/matchit.zip'
Plug 'w0rp/ale'
Plug 'wellle/targets.vim'

""""""""""""""""""""
" Python
""""""""""""""""""""

" Plug 'jmcantrell/vim-virtualenv'
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
" Plug 'tmhedberg/simpylfold'
Plug 'davidhalter/jedi-vim'
Plug 'klen/python-mode'
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}
Plug 'zchee/deoplete-jedi', { 'do': ':UpdateRemotePlugins' }

""""""""""""""""""""
" Javascript Typescript HTML CSS
""""""""""""""""""""

"Plug 'jason0x43/vim-js-indent'
"Plug 'leafgarland/typescript-vim'
"Plug 'lilydjwg/colorizer'
"Plug 'mattn/emmet-vim'
"Plug 'mhartington/nvim-typescript'
"Plug 'quramy/tsuquyomi'

""""""""""""""""""""
" Git
""""""""""""""""""""

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

""""""""""""""""""""
" Visual
""""""""""""""""""""

" Plug 'altercation/vim-colors-solarized'
" Plug 'roman/golden-ratio'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'bling/vim-airline'
Plug 'bronson/vim-trailing-whitespace'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'kshenoy/vim-signature'
Plug 'machakann/vim-highlightedyank'
Plug 'ryanoasis/vim-devicons' | Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'
Plug 'yuttie/comfortable-motion.vim'

""""""""""""""""""""
" Latex
""""""""""""""""""""

" Plug 'lervag/vimtex'
" Plug 'xuhdev/vim-latex-live-preview'

""""""""""""""""""""
" Markdown
""""""""""""""""""""

Plug 'suan/vim-instant-markdown' " npm -g install instant-markdown-d

""""""""""""""""""""
" UML
""""""""""""""""""""

" Plug 'aklt/plantuml-syntax'

call plug#end()
