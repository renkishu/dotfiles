
syntax enable

set number

set history=500

filetype plugin indent on

" vim plug
call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'preservim/nerdtree'

Plug 'junegunn/fzf', {'do': { -> fzf#install() } }

Plug 'junegunn/fzf.vim'

Plug 'mattn/emmet-vim'

Plug 'dense-analysis/ale'

Plug 'luochen1990/rainbow'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'morhetz/gruvbox'

Plug 'kkoomen/vim-doge'

call plug#end()

" Auto read for outside changes
set autoread
au FocusGained,BufEnter * checktime

" binds leader key to space
nnoremap <SPACE> <Nop>
let mapleader=' '

" quicksave
nmap <leader>w :w!<cr>

" quick exit
nmap <leader>q :q!<cr>

" sudo save
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" language
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

set wildmenu

" ignore compiled files
set wildignore=*.o,*~,*.pyc

if has("win16") || has("win32")
	set wildignore+=.git\*,.hg\*,.svn\*
else
	set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_STORE
endif

" show current position
set ruler

" command bar
set cmdheight=1

" hide abandoned buffer
set hid

" backspace configure
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" search
set ignorecase
set smartcase
set hlsearch
set incsearch

" don't redraw
set lazyredraw

" magic for regex
set magic

" highlight match
set showmatch
set mat=2

" no annoying error sounds
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" margin on the left
set foldcolumn=1

set encoding=utf-8

" unix as standard file type
set ffs=unix,dos,mac

" don't generate backup/swap
set nobackup
set nowb
set noswapfile

" tabs
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

" linebreaks
set lbr
set tw=500

" wrap/indent
set ai
set si
set wrap

" delays
set updatetime=300

set shortmess+=c

set signcolumn=yes

" tab navigation for coc.nvim
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

set laststatus=2

" 0 as first nonblank char
map 0 ^

" automatically picks gruvbox theme
autocmd vimenter * colorscheme gruvbox

" remaps
" split movement
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" closing buffers
map <leader>bd :bd<cr>
map <leader>ba :ba<cr>

" buffer movement
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" split creation
map <leader>sp :split<cr>
map <leader>vs :vsplit<cr>

" tabs
map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>
map <leader>tx :tabn<cr>
map <leader>tp :tabp<cr>

" return to last edit position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" python docstring
map <leader>dg :DogeGenerate<cr> 

" open file in firefox
nmap <silent> <leader>br :w!<cr>:exec 'silent !firefox % &'<cr>

" variables
let g:rainbow_active = 1
let b:ale_linters = ['eslint', 'prettier', 'pylint', 'clang', 'clang++', 'javac']
let g:airline_theme="gruvbox"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#ale#enabled = 1
