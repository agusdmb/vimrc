" Save with `:W` when sudo needed
command! W w !sudo tee % > /dev/null

autocmd WinEnter term://* startinsert
" autocmd BufNewFile,BufRead *.{ts,js,html} set shiftwidth=2
" autocmd BufNewFile,BufRead *.{ts,js,html} set tabstop=2

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" This line is so after every save in those typefiles, whitespaces at the end
" are trim
" autocmd BufWritePre *.{cpp,h,c,py,js,ts,css,sh,html} %s/\s\+$//e

au TermOpen * setlocal nonumber norelativenumber

" au BufNewFile,BufRead *.py let &l:colorcolumn=join(range(89,200),",")
" au BufNewFile,BufRead *.py setlocal textwidth=88

" augroup BgHighlight
"     autocmd!
"     autocmd WinEnter * set cul
"     autocmd WinLeave * set nocul
" augroup END

" make :Ag to do not match files
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)
autocmd FileType * set indentexpr= "some file types override it

" autocmd FileType python set foldmethod=indent

autocmd FileType json syntax match Comment +\/\/.\+$+

" this should be Ctrl + Enter but i couldn't make it work (works with C-J)
autocmd FileType sh nmap <buffer> <NL> :Exec<CR>

command Exec set splitright | vnew | set filetype=json | read !sh #
