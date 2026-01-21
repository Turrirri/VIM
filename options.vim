"   CONFIGURACIONES  "

colorscheme catppuccin_mocha
set autochdir
set autoindent
set autoread
set background=dark
set nobackup
set nowritebackup
set noswapfile
set signcolumn=yes
set cc=80
set updatetime=100
set clipboard=unnamedplus
set cmdheight=2
set complete-=i
set copyindent
set cursorline
set display+=lastline
set expandtab
set grepprg=rg\ --vimgrep\ $*
set helplang=es,en
set hidden
set history=500
set hlsearch
set ignorecase
set linebreak
set listchars=tab:\|>
set mouse=a
set nocompatible
set nomodeline nrformats=           " Los numerales serán tratados como decimales
set nu rnu
set path+=**
set shiftround
set shiftwidth=6
set smartcase
set smartindent
set smarttab
set softtabstop=4
set spelllang=en_us,es
set t_Co=256
set tabstop=4
set termguicolors
set undodir=~/.vim/undo
set undofile
set undolevels=10000
set viminfo='10,/10,h,<100,:100,%,n$HOME/.vim/viminfo/_viminfo
set visualbell
set wildcharm=<C-z>
set wildmode=longest:list,full

" add useful stuff to title bar (file name, flags, cwd)
" based on @factorylabs
if has('title') && (has('gui_running') || &title)
    set titlestring=
    set titlestring+=%f
    set titlestring+=%h%m%r%w
    set titlestring+=\ -\ %{v:progname}
    set titlestring+=\ -\ %{substitute(getcwd(),\ $HOME,\ '~',\ '')}
endif

"********************************************************
