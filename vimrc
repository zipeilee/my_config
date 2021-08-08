syntax on


set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set tabstop=4
set ai

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

" plug block
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'mhinz/vim-startify'

" Plug 'iamcco/mathjax-support-for-mkdp'
" Plug 'iamcco/markdown-preview.vim'

call plug#end()

" let g:mkdp_path_to_chrome = $BROWSER
" let g:mkdp_auto_start = 1
" nmap <silent> <F8> <Plug>MarkdownPreview
" imap <silent> <F8> <Plug>MarkdownPreview
" nmap <silent> <F9> <Plug>StopMarkdownPreview
" imap <silent> <F9> <Plug>StopMarkdownPreview

color dracula
let g:airline_theme='dracula'
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg
