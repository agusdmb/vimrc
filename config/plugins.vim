call plug#begin(expand('~/.config/nvim/plugged'))

""""""""""""""""""""
" General
""""""""""""""""""""

" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } | Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-slash'
" Plug 'kana/vim-textobj-indent' | Plug 'kana/vim-textobj-user'
Plug 'mhinz/vim-startify'
Plug 'moll/vim-bbye'
Plug 'raimondi/delimitmate'
Plug 'sjl/gundo.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/matchit.zip'
" Plug 'w0rp/ale'
Plug 'wellle/targets.vim'
" Plug 'Shougo/echodoc.vim'
Plug 'vim-scripts/BufOnly.vim'
Plug 'francoiscabrol/ranger.vim' | Plug 'rbgrouleff/bclose.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"""""""""""""""""""
" Python
"""""""""""""""""""

" Plug 'davidhalter/jedi-vim', { 'for': 'python' }
" Plug 'zchee/deoplete-jedi', { 'do': ':UpdateRemotePlugins' }
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}

"""""""""""""""""""
" Git
"""""""""""""""""""

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'rhysd/git-messenger.vim'

"""""""""""""""""""
"Visual
"""""""""""""""""""

Plug 'bling/vim-airline'
Plug 'bronson/vim-trailing-whitespace'
Plug 'junegunn/vim-peekaboo'
Plug 'kshenoy/vim-signature'
Plug 'machakann/vim-highlightedyank'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'
Plug 'yuttie/comfortable-motion.vim'
" Plug 'psliwka/vim-smoothie'
Plug 'majutsushi/tagbar'
" Plug 'docker/docker'
Plug 'morhetz/gruvbox'
" Plug 'camspiers/animate.vim' | Plug 'camspiers/lens.vim'

"""""""""""""""""""
"Markdown
"""""""""""""""""""

Plug 'suan/vim-instant-markdown' " npm -g install instant-markdown-d




call plug#end()
