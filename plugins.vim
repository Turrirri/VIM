let &rtp .= ',' . expand( '<sfile>:p:h' )

" * * * * * Plugins List* * * * *

"Plugin autoinstalling
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"
call plug#begin('~/.vim/plugged')
"
Plug 'XadillaX/json-formatter.vim', { 'do': 'npm install -g jjson' }
Plug 'Yggdroot/indentLine'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'dense-analysis/ale'
Plug 'prabirshrestha/vim-lsp'
Plug 'rhysd/vim-lsp-ale'
Plug 'easymotion/vim-easymotion'
Plug 'frazrepo/vim-rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'sheerun/vim-polyglot'
Plug 'timothycrosley/isort'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yegappan/mru'

call plug#end()


runtime /usr/share/vim/vim91/pack/dist/opt/justify/plugin/justify.vim /usr/share/vim/vim91/macros/matchit.vim

runtime ftplugin/man.vim
runtime ftplugin/markdown.vim
runtime ftplugin/python.vim


" ALE fixers"
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
let g:ale_fixers = {
            \'*': [ 'remove_trailing_lines', 'trim_whitespace'],
            \ 'python': [ 'autoflake', 'black', 'isort', 'autoimport', 'yapf'],
            \'javascript': ['eslint'],
            \}
let g:ale_lint_on_save = 1
let g:ale_sign_error ='Œ'
let g:ale_sign_warning = 'œ'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_disable_lsp = 1
let g:ale_completion_enabled=1
"fin vim-ale

"fzf-plugin
let g:fzf_vim ={}

" indentLines
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_setColors = 0


"" Plugin AirLine
let g:airline_detect_modified=1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline_powerline_fonts = 1

"usando el plugin vin-rainbow
let g:rainbow_active = 1
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

" usando el plugin COC (deprecated)
"if has('nvim')
"  inoremap <silent><expr> <c-space> coc#refresh()
"else
"  inoremap <silent><expr> <c-@> coc#refresh()
"endif
