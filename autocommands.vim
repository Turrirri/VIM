" SECCIÓN DE AUTOCOMANDOS

augroup remember_folds
  autocmd!
  autocmd BufWinLeave *.* mkview
  autocmd BufWinEnter *.* silent! loadview
augroup END

augroup configgroup
    autocmd!
    "autocmd BufEnter Makefile setlocal noexpandtab
    "autocmd BufEnter *.h *.c *.cpp setlocal shiftwidth=2 softtabstop=2 tabstop=2
    "autocmd BufEnter *.zsh‐theme setlocal filetype=zsh
    autocmd BufEnter * :AirlineRefresh
    autocmd BufWrite * :lcd %:p:h
    autocmd BufWritePost * :nohlsearch
    autocmd BufWritePre *.cpp,*.php,*.py,*.js,*.txt,*.hs,*.java,*.md :call StripWhitespace()
    "autocmd BufWritePre *.py :%s/\s\+$//e
    "autocmd FileType java setlocal formatprg=par\ ‐w80\ ‐T4 nolist listchars=tab:+\ ,eol:‐ noexpandtab
    "autocmd FileType php setlocal expandtab formatprg=par\ ‐w80\ ‐T4 list listchars=tab:+\ ,eol:‐
    "autocmd FileType python setlocal commentstring=#\ %s
    "autocmd FileType python setlocal makeprg=python3\ -u
    "autocmd FileType python map <buffer> <F9> :make %<CR>
    "autocmd FileType c,cpp,java set mps+==:;
    "autocmd FileType cpp setlocal tabstop=2 softtabstop=2 shiftwidth=2
    "autocmd FileType c setlocal tabstop=4 shiftwidth=4 expandtab
    "autocmd FileType ruby setlocal commentstring=#\ %s shiftwidth=2 softtabstop=2 tabstop=2
    autocmd VimEnter * highlight clear SignColumn Vau VimEnter * RainbowParenthesesToggle
    "autocmd BufNewFile,BufRead pyyhon setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix
    "autocmd BufNewFile,BufRead *.js, *.html, *.css setlocal tabstop=2 softtabstop=2 set shiftwidth=2
augroup END

" Source vim configuration file whenever it is saved
if has('autocmd') " ignore this section if your vim does not support autocommands
    augroup reload_vimrc
        autocmd!
        autocmd! BufWritePost $MYVIMRC,$MYGVIMRC nested source %
    augroup END
endif

"********************************************************

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled (set the lsp shortcuts) when an lsp server
    " is registered for a buffer.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

"********************************************************
