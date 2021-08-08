syntax on


set number

set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu

" 开启真彩色
set termguicolors

"   search config
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

noremap = nzz
noremap - Nzz

map S :w<CR>
map s <nop>
map Q :q<CR>

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'dracula/vim', { 'as': 'dracula' } 

call plug#end()

color dracula
let g:airline_theme='dracula'
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg
