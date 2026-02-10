" KEY-MAPPINGS

let mapleader = " "
inoremap jk <esc>
map <leader>e :20Lex<CR>
nmap <Leader>f = :vimgrep<space>
nmap <Leader>w = :w !sudo tee > /dev/null %<CR>
map <leader>h :noh<CR>
nnoremap # #zz
nnoremap * *zz
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap <Leader>b :buffer <C-z><S-Tab>
map <C-h> = <C-w>h
nnoremap  <C-j> = <C-w>j
nnoremap  <C-k> = <C-w>k
nnoremap  <C-l> = <C-w>l
nnoremap  <F4> :call ToggleNumber()<cr>
nnoremap  ff :FZF ..<CR>
nnoremap  FF :FZF ~<CR>
nnoremap  <F3> :call StripWhitespace()<cr>
nnoremap  <leader>fr = :Mru<CR>
nnoremap  t :bel term<CR>
nnoremap  <F8> = :ALEFix<CR>
nnoremap  <Leader>u :UndotreeToggle<CR>
nnoremap  <S-F11> :set guioptions +=m<CR>
nnoremap  <S-F8> = :ALENextWrap<CR>
nnoremap  tc = :tabclose<CR>
nnoremap  tn = :tabNext<CR>
nnoremap  to = :tabonly<CR>
nnoremap  tp = :tabprev<CR>
nnoremap N Nzz
nnoremap g# g#zz
nnoremap g* g*zz
nnoremap gc BBE
nnoremap j gj
nnoremap k gk
nnoremap n nzz
nnoremap te = :tabedit<space>
noremap <S-H> :bfirst<CR>
noremap <S-h> :bprev<CR>
noremap <S-L> :blast<CR>
noremap <S-l> :bnext<CR>
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
