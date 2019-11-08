call plug#begin(expand('~/.config/nvim/plugged'))

""""""""""""""""""""
" General
""""""""""""""""""""

" Plug 'AndrewRadev/splitjoin.vim'
" Plug 'junegunn/vim-easy-align'
" Plug 'Chiel92/vim-autoformat'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
" Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } | Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-slash'
Plug 'kana/vim-textobj-indent' | Plug 'kana/vim-textobj-user'
Plug 'mhinz/vim-startify'
Plug 'moll/vim-bbye'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'sjl/gundo.vim'
Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/matchit.zip'
Plug 'w0rp/ale'
Plug 'wellle/targets.vim'
Plug 'Shougo/echodoc.vim'
Plug 'vim-scripts/BufOnly.vim'
Plug 'tpope/vim-vinegar'
" Plug 'ncm2/float-preview.nvim'
" Plug 'rhysd/clever-f.vim'
" Plug 'thalesmello/webcomplete.vim'

""""""""""""""""""""
" Python
""""""""""""""""""""

" Plug 'tmhedberg/simpylfold'
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
Plug 'zchee/deoplete-jedi', { 'do': ':UpdateRemotePlugins' }
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}
" Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop'}
" Plug 'szymonmaszke/vimpyter' "vim-plug

""""""""""""""""""""
" Git
""""""""""""""""""""

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'rhysd/git-messenger.vim'

""""""""""""""""""""
" Visual
""""""""""""""""""""

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'bling/vim-airline'
Plug 'bronson/vim-trailing-whitespace'
" Plug 'junegunn/goyo.vim'
" Plug 'junegunn/limelight.vim'
" Plug 'junegunn/vim-peekaboo'
Plug 'kshenoy/vim-signature'
Plug 'machakann/vim-highlightedyank'
Plug 'ryanoasis/vim-devicons' | Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'
Plug 'yuttie/comfortable-motion.vim'
Plug 'majutsushi/tagbar'
" Plug 'docker/docker'
Plug 'morhetz/gruvbox'

""""""""""""""""""""
" Markdown
""""""""""""""""""""

" Plug 'suan/vim-instant-markdown' " npm -g install instant-markdown-d

""""""""""""""""""""
" Go
""""""""""""""""""""

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

call plug#end()
