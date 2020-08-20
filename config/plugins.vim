call plug#begin(expand('~/.config/nvim/plugged'))

""""""""""""""""""""
" General
""""""""""""""""""""

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
Plug 'wellle/targets.vim'
Plug 'vim-scripts/BufOnly.vim'
Plug 'francoiscabrol/ranger.vim' | Plug 'rbgrouleff/bclose.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

"""""""""""""""""""
" Python
"""""""""""""""""""

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
Plug 'majutsushi/tagbar'
" Plug 'docker/docker'
Plug 'morhetz/gruvbox'
" Plug 'camspiers/animate.vim' | Plug 'camspiers/lens.vim'
Plug 'unblevable/quick-scope'

"""""""""""""""""""
" Markdown
"""""""""""""""""""

" Plug 'suan/vim-instant-markdown' " npm -g install instant-markdown-d

"""""""""""""""""""
" CSS
"""""""""""""""""""

Plug 'ap/vim-css-color'

call plug#end()
