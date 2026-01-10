" KEY-MAPPINGS

let mapleader = " "
inoremap jk <esc>
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
map <silent> <leader>e :20Lex<CR>
nmap <Leader>f = :vimgrep<space>
nmap <Leader>w = :w !sudo tee > /dev/null %<CR>
nnoremap <silent> <Esc> :noh<CR>
nnoremap # #zz
nnoremap * *zz
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap <Leader>b :buffer <C-z><S-Tab>
nnoremap <silent> <C-h> = <C-w>h
nnoremap <silent> <C-j> = <C-w>j
nnoremap <silent> <C-k> = <C-w>k
nnoremap <silent> <C-l> = <C-w>l
nnoremap <silent> <F4> :call ToggleNumber()<cr>
nnoremap <silent> ff :FZF ..<CR>
nnoremap <silent> FF :FZF ~<CR>
nnoremap <silent> <F3> :call StripWhitespace()<cr>
nnoremap <silent> <F6> = :Mru<CR>
nnoremap <leader>t :bel term<CR>
nnoremap <silent> <F8> = :ALEFix<CR>
nnoremap <silent> <Leader>u :UndotreeToggle<CR>
nnoremap <silent> <S-F11> :set guioptions +=m<CR>
nnoremap <silent> <S-F8> = :ALENextWrap<CR>
nnoremap <silent> tc = :tabclose<CR>
nnoremap <silent> tn = :tabNext<CR>
nnoremap <silent> to = :tabonly<CR>
nnoremap <silent> tp = :tabprev<CR>
nnoremap N Nzz
nnoremap g# g#zz
nnoremap g* g*zz
nnoremap gc BBE
nnoremap j gj
nnoremap k gk
nnoremap n nzz
nnoremap te = :tabedit<space>
noremap {B :bfirst<CR>
noremap {b :bprev<CR>
noremap }B :blast<CR>
noremap }b :bnext<CR>
vmap s S    "Útil para el vim-surround
vnoremap / /\v
"
"********************************************************
"
"           MOVING LINES UP AND DOWN
"
"********************************************************
nmap <M-Down> :m .+1<CR>
vmap <M-Down> :m '>+1<CR>
vmap <M-Up> :m '<-2<CR>
nmap <M-Up> :m .-2<CR>


"********************************************************
"
"          Útiles para el plugin VIM-LSP
"
"********************************************************

nmap <buffer> gd <plug>(lsp-definition)
nmap <buffer> gs <plug>(lsp-document-symbol-search)
nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
nmap <buffer> gr <plug>(lsp-references)
nmap <buffer> gi <plug>(lsp-implementation)
nmap <buffer> gt <plug>(lsp-type-definition)
nmap <buffer> <leader>rn <plug>(lsp-rename)
nmap <buffer> [g <plug>(lsp-previous-diagnostic)
nmap <buffer> ]g <plug>(lsp-next-diagnostic)
nmap <buffer> K <plug>(lsp-hover)
nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
nnoremap <buffer> <expr><c-d> lsp#scroll(-4)
