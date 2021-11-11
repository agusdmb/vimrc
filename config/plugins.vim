call plug#begin(expand('~/.config/nvim/plugged'))

""""""""""""""""""""
" General
""""""""""""""""""""

Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } | Plug 'junegunn/fzf.vim'
" Plug 'junegunn/vim-slash'
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
Plug 'tmhedberg/SimpylFold'
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

"""""""""""""""""""
" Git
"""""""""""""""""""

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'rhysd/git-messenger.vim'
Plug 'kdheepak/lazygit.nvim'

"""""""""""""""""""
"Visual
"""""""""""""""""""

Plug 'bling/vim-airline'
Plug 'bronson/vim-trailing-whitespace'
" Plug 'junegunn/vim-peekaboo'
Plug 'kshenoy/vim-signature'
Plug 'machakann/vim-highlightedyank'
Plug 'vim-airline/vim-airline-themes'
" Plug 'yggdroot/indentline'
Plug 'yuttie/comfortable-motion.vim'
Plug 'majutsushi/tagbar'
" Plug 'docker/docker'
Plug 'morhetz/gruvbox'
" Plug 'sickill/vim-monokai'
" Plug 'joshdick/onedark.vim'
" Plug 'camspiers/animate.vim' | Plug 'camspiers/lens.vim'
Plug 'unblevable/quick-scope'
" Plug 'calebsmith/vim-lambdify'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'

" Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
" " If you want to display icons, then use one of these plugins:
" Plug 'kyazdani42/nvim-web-devicons' " lua
" Plug 'ryanoasis/vim-devicons' " vimscript


"""""""""""""""""""
" Markdown
"""""""""""""""""""

" Plug 'suan/vim-instant-markdown' " npm -g install instant-markdown-d

"""""""""""""""""""
" CSS
"""""""""""""""""""

Plug 'ap/vim-css-color'


"""""""""""""""""""""
""" Neovim 5
"""""""""""""""""""""
"" Plug 'nvim-treesitter/nvim-treesitter'
"Plug 'nvim-lua/popup.nvim' | Plug 'nvim-lua/plenary.nvim' | Plug 'nvim-telescope/telescope.nvim'
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
"Plug 'AckslD/nvim-anywise-reg.lua'
"Plug 'neovim/nvim-lspconfig'

Plug 'github/copilot.vim'

call plug#end()
