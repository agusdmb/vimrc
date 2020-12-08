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

" FZF {{{
    nnoremap <C-p> :Files<CR>
    nnoremap <Leader>b :Buffers<CR>
    " nnoremap <Leader>a :Ag<CR>
    nnoremap <Leader>l :Lines<CR>
    nnoremap <Leader>t :Tags<CR>

    let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }
" }}}

" gruvbox {{{
    if !exists('g:not_finish_vimplug')
      let g:gruvbox_italic=1
      let g:gruvbox_contrast_dark='hard'
      let g:gruvbox_contrast_light='hard'
      let g:gruvbox_sign_column='bg0'
      colorscheme gruvbox
    endif
" }}}

" " gundo {{{
"     nnoremap <Leader>u :GundoToggle<CR>
" " }}}

" gitgutter {{{
    let g:gitgutter_sign_added              = '▎'
    let g:gitgutter_sign_modified           = '▎'
    let g:gitgutter_sign_removed            = '▎'
    let g:gitgutter_sign_removed_first_line = '▎'
    let g:gitgutter_sign_modified_removed   = '▎'
    let g:gitgutter_preview_win_floating = 1

    let g:gitgutter_enabled = 1

    highlight GitGutterAdd    guifg=#33ff33 ctermfg=2
    highlight GitGutterChange guifg=#ffff33 ctermfg=3
    highlight GitGutterDelete guifg=#ff4444 ctermfg=1

    let g:gitgutter_map_keys = 0
    nmap ]c <Plug>(GitGutterNextHunk)
    nmap [c <Plug>(GitGutterPrevHunk)
" }}}

" " indentline {{{
    " let g:indentLine_setConceal = 0
" " }}}

" vim-signature"{{{
    "Support for gitgutter. When this =1 :
    "The mark is displayed over the gitgutter sign, but inherits the same colour so
    "you can tell what was there
    let g:SignatureMarkTextHLDynamic = 1
" }}}

" Tagbar {{{
    nnoremap <F4> :Tagbar<CR>
" }}}

" startify {{{
    let g:startify_change_to_dir = 0
    let g:startify_lists = [
                \{ 'type': 'dir',       'header': ['   MRU '. getcwd()] },
                \{ 'type': 'files',     'header': ['   MRU']            },
                \]
" }}}

" delimitmate {{{
-   " Para que al apretar enter entre (|) o [|] o {|} baje el segundo y quede el cursor al medio
    let delimitMate_expand_cr = 1
    " Parecido pero para que cuando se apreta space en (|) quede ( | )
    let delimitMate_expand_space = 1
" -" }}}}}}"

" ranger {{{
    let g:ranger_replace_netrw = 1
    let g:ranger_map_keys = 0
    map <leader>e :Ranger<CR>
" }}}

"  coc {{{

    " " TextEdit might fail if hidden is not set.
    " set hidden

    " " Some servers have issues with backup files, see #649.
    " set nobackup
    " set nowritebackup

    " " Give more space for displaying messages.
    " set cmdheight=2

    " " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
    " " delays and poor user experience.
    " set updatetime=300

    " " Don't pass messages to |ins-completion-menu|.
    set shortmess+=c

    " " Always show the signcolumn, otherwise it would shift the text each time
    " " diagnostics appear/become resolved.
    " if has("patch-8.1.1564")
    "   " Recently vim can merge signcolumn and number column into one
    "   set signcolumn=number
    " else
    "   set signcolumn=yes
    " endif

    " Use tab for trigger completion with characters ahead and navigate.
    " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
    " other plugin before putting this into your config.
    inoremap <silent><expr> <TAB>
          \ pumvisible() ? "\<C-n>" :
          \ <SID>check_back_space() ? "\<TAB>" :
          \ coc#refresh()
    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

    function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

    " Use <c-space> to trigger completion.
    inoremap <silent><expr> <c-space> coc#refresh()

    " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
    " position. Coc only does snippet and additional edit on confirm.
    " <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
    if exists('*complete_info')
      inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
    else
      inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
    endif

    " Use `[g` and `]g` to navigate diagnostics
    nmap <silent> [g <Plug>(coc-diagnostic-prev)
    nmap <silent> ]g <Plug>(coc-diagnostic-next)

    " GoTo code navigation.
    nmap <silent> <leader>d <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    " nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)

    " Use K to show documentation in preview window.
    nnoremap <silent> K :call <SID>show_documentation()<CR>

    function! s:show_documentation()
      if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
      else
        call CocAction('doHover')
      endif
    endfunction

    " Highlight the symbol and its references when holding the cursor.
    autocmd CursorHold * silent call CocActionAsync('highlight')

    " Symbol renaming.
    nmap <leader>rn <Plug>(coc-rename)

    " " Formatting selected code.
    " xmap <leader>f  <Plug>(coc-format-selected)
    " nmap <leader>f  <Plug>(coc-format-selected)

    augroup mygroup
      autocmd!
      " Setup formatexpr specified filetype(s).
      autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
      " Update signature help on jump placeholder.
      autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
    augroup end

    " " Applying codeAction to the selected region.
    " " Example: `<leader>aap` for current paragraph
    " xmap <leader>a  <Plug>(coc-codeaction-selected)
    " nmap <leader>a  <Plug>(coc-codeaction-selected)

    " " Remap keys for applying codeAction to the current line.
    " nmap <leader>ac  <Plug>(coc-codeaction)
    " " Apply AutoFix to problem on the current line.
    " nmap <leader>qf  <Plug>(coc-fix-current)

    " " Map function and class text objects
    " " NOTE: Requires 'textDocument.documentSymbol' support from the language server.
    " xmap if <Plug>(coc-funcobj-i)
    " omap if <Plug>(coc-funcobj-i)
    " xmap af <Plug>(coc-funcobj-a)
    " omap af <Plug>(coc-funcobj-a)
    " xmap ic <Plug>(coc-classobj-i)
    " omap ic <Plug>(coc-classobj-i)
    " xmap ac <Plug>(coc-classobj-a)
    " omap ac <Plug>(coc-classobj-a)

    " " Use CTRL-S for selections ranges.
    " " Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
    " nmap <silent> <C-s> <Plug>(coc-range-select)
    " xmap <silent> <C-s> <Plug>(coc-range-select)

    " Add `:Format` command to format current buffer.
    command! -nargs=0 Format :call CocAction('format')

    nnoremap <leader>f :Format<CR>

    " Add `:Fold` command to fold current buffer.
    command! -nargs=? Fold :call     CocAction('fold', <f-args>)

    " Add `:OR` command for organize imports of the current buffer.
    command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

    " Add (Neo)Vim's native statusline support.
    " NOTE: Please see `:h coc-status` for integrations with external plugins that
    " provide custom statusline: lightline.vim, vim-airline.
    set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

    " " Mappings using CoCList:
    " " Show all diagnostics.
    " nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
    " " Manage extensions.
    " nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
    " " Show commands.
    " nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
    " " Find symbol of current document.
    " nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
    " " Search workspace symbols.
    " nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
    " " Do default action for next item.
    " nnoremap <silent> <space>j  :<C-u>CocNext<CR>
    " " Do default action for previous item.
    " nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
    " " Resume latest coc list.
    " nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

"  }}}

"  {{{ quickscope
    let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
"  }}}

"  {{{ quickscope
    let g:bclose_no_plugin_maps = 1
"  }}}
