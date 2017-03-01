" init.vim

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } 
Plug 'scrooloose/nerdcommenter' 
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/neosnippet.vim'
Plug 'w0rp/ale' 
Plug 'godlygeek/tabular'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
Plug 'eagletmt/ghcmod-vim', { 'for': 'haskell' }
Plug 'eagletmt/neco-ghc', { 'for': 'haskell' }
Plug 'zchee/deoplete-jedi', { 'for': 'python' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'mitsuse/autocomplete-swift'
Plug 'keith/swift.vim'
call plug#end()

imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

let g:deoplete#enable_at_startup = 1
let g:neosnippet#snippets_directory='~/.config/nvim/snippets'
let g:haskell_tabular = 1

vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>

map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

syntax on
filetype plugin indent on

set rtp+=/usr/local/opt/fzf
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set smartindent
set autoindent
set shiftround
set showmatch
set smartcase
set expandtab
set hlsearch
set incsearch
set backspace=indent,eol,start
set hidden
set pastetoggle=<F2>
set nowrap
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__

let mapleader=','

" mappings
"map <c-j> <c-w>j
"map <c-k> <c-w>k
"map <c-l> <c-w>l
"map <c-h> <c-w>h
map <leader>n :NERDTreeToggle<CR>
nnoremap <leader><space> :noh<CR>

nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

imap <c-x><c-o> <plug>(fzf-complete-line)
map <leader>b :Buffers<cr>
map <leader>f :Files<cr>
map <leader>g :GFiles<cr>

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4
