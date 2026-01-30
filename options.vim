filetype plugin indent on
set softtabstop=4
set smartindent
set showmatch
syntax on

set timeoutlen=300
set ttimeoutlen=10

" Line numbers
set number
set relativenumber

" Indentation and tabs
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab

set cursorline

let g:netrw_liststyle = 3
let g:netrw_keepdir = 0
let g:netrw_browse_split = 4
let g:netrw_banner = 0
let g:netrw_sort_by = 'name'
let g:netrw_sort_direction = 'normal'
let g:netrw_treeview = 2
let g:netrw_winsize = 20

autocmd BufLeave * if &filetype ==# 'netrw' | close | endif
