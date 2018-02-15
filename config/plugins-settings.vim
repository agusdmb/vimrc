" Emmet {{{
    imap <leader>y <C-y>,
    let g:user_emmet_install_global = 0
    autocmd FileType html,css EmmetInstall
" }}}


" Python  {{{
    " shortcut para yapf
    " nnoremap <leader>y :0,$!yapf<CR>
    " This one down here isnt working (?)
    let g:pymode_rope = 0
    " let g:pymode_virtualenv_path = expand('~/.virtualenvs')
    let g:pymode_lint_on_write = 0
" }}}


" delimitmate {{{
    " Para que al apretar enter entre (|) o [|] o {|} baje el segundo y quede el
    " cursor al medio
    let delimitMate_expand_cr = 1
    " Parecido pero para que cuando se apreta space en (|) quede ( | )
    let delimitMate_expand_space = 1
" }}}


" airline {{{
    set laststatus=2
    " To show the buffers open on the top status bar
    let g:airline#extensions#tabline#enabled = 1

    if !exists('g:airline_symbols')
      let g:airline_symbols = {}
    endif

    if !exists('g:airline_powerline_fonts')
      let g:airline#extensions#tabline#left_sep = ' '
      let g:airline#extensions#tabline#left_alt_sep = '|'
      let g:airline_left_sep          = '▶'
      let g:airline_left_alt_sep      = '»'
      let g:airline_right_sep         = '◀'
      let g:airline_right_alt_sep     = '«'
      let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
      let g:airline#extensions#readonly#symbol   = '⊘'
      let g:airline#extensions#linecolumn#prefix = '¶'
      let g:airline#extensions#paste#symbol      = 'ρ'
      let g:airline_symbols.linenr    = '␊'
      let g:airline_symbols.branch    = '⎇'
      let g:airline_symbols.paste     = 'ρ'
      let g:airline_symbols.paste     = 'Þ'
      let g:airline_symbols.paste     = '∥'
      let g:airline_symbols.whitespace = 'Ξ'
    else
      let g:airline#extensions#tabline#left_sep = ''
      let g:airline#extensions#tabline#left_alt_sep = ''

      " powerline symbols
      let g:airline_left_sep = ''
      let g:airline_left_alt_sep = ''
      let g:airline_right_sep = ''
      let g:airline_right_alt_sep = ''
      let g:airline_symbols.branch = ''
      let g:airline_symbols.readonly = ''
      let g:airline_symbols.linenr = ''
    endif
" }}}

" airline-theme {{{
    let g:airline_theme='deus'
" }}}

" easymotion {{{
    let g:EasyMotion_do_mapping = 0 " Disable default mappings

    " Jump to anywhere you want with minimal keystrokes, with just one key binding.
    " `s{char}{label}`
    " nmap s <Plug>(easymotion-overwin-f)
    " or
    " `s{char}{char}{label}`
    " Need one more keystroke, but on average, it may be more comfortable.
    nmap s <Plug>(easymotion-overwin-f2)

    " Turn on case insensitive feature
    let g:EasyMotion_smartcase = 1
" }}}


" ale {{{
    let g:ale_linters = {
    \   'python': ['flake8'],
    \}

    let g:ale_lint_delay = 1000

    " set statusline+=%{ALEGetStatusLine()}

    let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
" }}}


" nerdtree {{{
    nnoremap <Leader>e :NERDTreeToggle<CR>
    nnoremap <Leader>f :NERDTreeFocus<CR>
    let NERDTreeIgnore = ['\.pyc$']
" }}}


" EasyAlign {{{
    " Start interactive EasyAlign in visual mode (e.g. vipga)
    xmap ga <Plug>(EasyAlign)

    " Start interactive EasyAlign for a motion/text object (e.g. gaip)
    nmap ga <Plug>(EasyAlign)
" }}}


" session management {{{
    nnoremap <leader>so :OpenSession<Space>
    nnoremap <leader>ss :SaveSession<Space>
    nnoremap <leader>sd :DeleteSession<CR>
    nnoremap <leader>sc :CloseSession<CR>

    let g:session_directory = "~/.config/nvim/sessions"
    let g:session_autoload = "no"
    let g:session_autosave = "no"
    let g:session_command_aliases = 1
" }}}


" FZF {{{
    nnoremap <C-p> :FZF<CR>
    nnoremap <Leader>b :Buffers<CR>
" }}}


" deoplete {{{
    " Use deoplete.
    let g:deoplete#enable_at_startup = 1

    inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

    let g:python_host_prog = '/usr/bin/python'
    let g:python3_host_prog = '/usr/bin/python3'
" }}}


" molokai {{{
    if !exists('g:not_finish_vimplug')
      colorscheme molokai
    endif
" }}}


" gundo {{{
    nnoremap <Leader>u :GundoToggle<CR>
" }}}


" gitgutter {{{
    let g:gitgutter_map_keys = 0
    nmap ]c <Plug>GitGutterNextHunk
    nmap [c <Plug>GitGutterPrevHunk
" }}}


" indentline {{{
    let g:indentLine_setConceal = 0
" }}}

" autoformat {{{
    nnoremap <F3> :Autoformat<CR>
    vnoremap <F3> :Autoformat<CR>
" }}}
