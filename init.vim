syntax on

set nu

set updatetime=300

set noerrorbells
set novisualbell

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set indentexpr=
set autoindent
set smartindent

set nowrap

set smartcase
set ignorecase
set incsearch

set wildmenu
set wildignorecase

set noswapfile
set nobackup

set undodir=~/.config/nvim/undodir
set undofile

set cursorline
set background=dark

filetype plugin indent on

set cmdheight=1
set laststatus=2

call plug#begin()

Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'luochen1990/rainbow'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

call plug#end()

let mapleader=' '

map <leader>w :w!<cr>
map <silent> <leader>bd :bd<cr>
map <silent> <leader>ba :%bd<cr>

map <silent> <leader>h :bprev<cr>
map <silent> <leader>l :bnext<cr>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <silent> <M-Left> :bprev<cr>
map <silent> <M-Right> :bnext<cr>


nnoremap <F5> :silent update<Bar>silent !firefox %:p &<CR>

let g:rainbow_active = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'murmur'
