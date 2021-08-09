syntax on


set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set tabstop=4
set ai
set hidden


"===
"=== from mediu
"===
" open new split panes to right and below
set splitright
set splitbelow


" 开启真彩色
set termguicolors

"   search config
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
set updatetime=100

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
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'
" Plug 'iamcco/mathjax-support-for-mkdp'
" Plug 'iamcco/markdown-preview.vim'

call plug#end()


"===
"=== nerdtree
"===
nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p


"===
"=== coc.nvim
"===
let g:coc_global_extensions = ['coc-json', 'coc-vimlsp', 'coc-jedi', 'coc-marketplace', 'coc-go']
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
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation. 
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> <leader>h :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')



" let g:mkdp_path_to_chrome = $BROWSER
" let g:mkdp_auto_start = 1
" nmap <silent> <F8> <Plug>MarkdownPreview
" imap <silent> <F8> <Plug>MarkdownPreview
" nmap <silent> <F9> <Plug>StopMarkdownPreview
" imap <silent> <F9> <Plug>StopMarkdownPreview

color dracula
let g:airline_theme='dracula'
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg

