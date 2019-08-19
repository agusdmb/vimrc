" vim: foldmethod=marker

" airline {{{
    set laststatus=2
    " To show the buffers open on the top status bar
    let g:airline#extensions#tabline#enabled = 1
    if !exists('g:airline_symbols')
      let g:airline_symbols = {}
    endif
    if !exists('g:airline_powerline_fonts')
      let g:airline#extensions#tabline#left_sep = ''
      let g:airline#extensions#tabline#left_alt_sep = ''
      let g:airline_left_sep          = ''
      let g:airline_left_alt_sep      = '»'
      let g:airline_right_sep         = ''
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
    let g:airline_theme='gruvbox'
" }}}

" ale {{{
    let g:ale_linters = {
    \   'python': ['pylint', 'flake8', 'black', 'mypy'],
    \}
    " 'pydocstyle'
    let g:ale_fixers = {
    \   '*': ['remove_trailing_lines', 'trim_whitespace'],
    \   'python': ['isort', 'black'],
    \}
    let g:ale_python_mypy_options='--ignore-missing-imports'
    let g:ale_lint_delay = 1000
    " set statusline+=%{ALEGetStatusLine()}
    let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
    let g:ale_python_pylint_change_directory = 0
    nnoremap <Leader>f :ALEFix<CR>
" }}}

" nerdtree {{{
    nnoremap <Leader>e :NERDTreeToggle<CR>
    " nnoremap <Leader>f :NERDTreeFocus<CR>
    let NERDTreeIgnore = ['\.pyc$', '__pycache__']
" }}}

" FZF {{{
    nnoremap <C-p> :FZF<CR>
    nnoremap <Leader>b :Buffers<CR>
    nnoremap <Leader>a :Ag<CR>
" }}}

" deoplete {{{
    " Use deoplete.
    let g:deoplete#enable_at_startup = 1
    inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
    inoremap <expr><S-tab> pumvisible() ? "\<c-p>" : "\<S-tab>"
    let g:deoplete#sources#jedi#show_docstring = 1
    let g:deoplete#enable_ignore_case = 1
    let g:deoplete#enable_smart_case = 1
" }}}

" gruvbox {{{
    if !exists('g:not_finish_vimplug')
      colorscheme gruvbox
    endif
" }}}

" " gundo {{{
"     nnoremap <Leader>u :GundoToggle<CR>
" " }}}

" gitgutter {{{
    let g:gitgutter_map_keys = 0
    nmap ]c <Plug>GitGutterNextHunk
    nmap [c <Plug>GitGutterPrevHunk
" }}}

" " indentline {{{
"     let g:indentLine_setConceal = 0
" " }}}

" " autoformat {{{
"     nnoremap <F3> :Autoformat<CR>
"     vnoremap <F3> :Autoformat<CR>
" " }}}

" vim-signature"{{{
    "Support for gitgutter. When this =1 :
    "The mark is displayed over the gitgutter sign, but inherits the same colour so
    "you can tell what was there
    let g:SignatureMarkTextHLDynamic = 1
" }}}

" " Goyo & Limelight {{{
"     nnoremap <Leader>l :Goyo <Bar> Limelight!!<CR>
" " }}}

" Echodoc {{{
    let g:echodoc#enable_at_startup = 1
" }}}

" Tagbar {{{
"     nnoremap <F4> :Tagbar<CR>
" }}}

" " python-mode {{{
"     " A lot is disabled, what I'm using:
"     "   breakpoints, virtualenv, motions, syntax,
"     "   indent
"     let g:pymode_breakpoint = 1
"     let g:pymode_breakpoint_bind = '<leader>s'
"     let g:pymode_folding = 1
"     let g:pymode_indent = 1
"     let g:pymode_lint = 0
"     let g:pymode_lint_checkers = ['flake8']
"     let g:pymode_lint_on_write = 0
"     let g:pymode_motion = 1
"     let g:pymode_rope = 0
"     let g:pymode_rope_complete_on_dot = 0
"     let g:pymode_rope_completion = 0
"     let g:pymode_run = 0
"     let g:pymode_options = 0
"     let g:pymode_options_colorcolumn = 0
" " }}}

" startify {{{
    let g:startify_change_to_dir = 0
    let g:startify_lists = [
                \{ 'type': 'dir',       'header': ['   MRU '. getcwd()] },
                \{ 'type': 'files',     'header': ['   MRU']            },
                \]
" }}}

" devicons nerdtree{{{
    let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" }}}

" " clever f {{{
"     let g:clever_f_across_no_line = 0
"     let g:clever_f_fix_key_direction = 0
"     let g:clever_f_timeout_ms = 3000
" " }}}

" delimitmate {{{
-   " Para que al apretar enter entre (|) o [|] o {|} baje el segundo y quede el cursor al medio
    let delimitMate_expand_cr = 1
    " Parecido pero para que cuando se apreta space en (|) quede ( | )
    let delimitMate_expand_space = 1
" -" }}}}}}"
