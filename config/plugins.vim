call plug#begin(expand('~/.config/nvim/plugged'))

""""""""""""""""""""
" General
""""""""""""""""""""
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'christoomey/vim-tmux-navigator'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Plug 'junegunn/vim-easy-align'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-user'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'sjl/gundo.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/matchit.zip'
Plug 'w0rp/ale'
" Plug 'xolox/vim-misc' " needed for vim-session
" Plug 'xolox/vim-session'
" Plug 'valloric/MatchTagAlways'
Plug 'nelstrom/vim-visual-star-search'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'wellle/targets.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'mhinz/vim-startify'
Plug 'haya14busa/incsearch.vim'
Plug 'moll/vim-bbye'
Plug 'junegunn/vim-peekaboo'
Plug 'junegunn/vim-slash'
Plug 'junegunn/goyo.vim'

""""""""""""""""""""
" Python
""""""""""""""""""""
Plug 'klen/python-mode'
Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi', { 'do': ':UpdateRemotePlugins' }
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}
" Plug 'jmcantrell/vim-virtualenv'
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
" Plug 'tmhedberg/simpylfold'

"""""""""""""""""""""
"" Javascript Typescript HTML CSS
"""""""""""""""""""""
"Plug 'leafgarland/typescript-vim'
"Plug 'jason0x43/vim-js-indent'
"Plug 'mhartington/nvim-typescript'
"Plug 'lilydjwg/colorizer'
"Plug 'mattn/emmet-vim'
"Plug 'quramy/tsuquyomi'

""""""""""""""""""""
" Git
""""""""""""""""""""
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

""""""""""""""""""""
" Visual
""""""""""""""""""""
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasr/molokai'
Plug 'yuttie/comfortable-motion.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'machakann/vim-highlightedyank'
Plug 'bronson/vim-trailing-whitespace'
Plug 'kshenoy/vim-signature'
" Plug 'roman/golden-ratio'
Plug 'yggdroot/indentline'
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/limelight.vim'

""""""""""""""""""""
" Latex
""""""""""""""""""""
" Plug 'xuhdev/vim-latex-live-preview'
" Plug 'lervag/vimtex'

""""""""""""""""""""
" Markdown
""""""""""""""""""""
Plug 'suan/vim-instant-markdown' " npm -g install instant-markdown-d

""""""""""""""""""""
" UML
""""""""""""""""""""
" Plug 'aklt/plantuml-syntax'

call plug#end()
