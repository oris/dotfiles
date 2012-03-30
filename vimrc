" Syntax highlighting
syntax on

" gui options
set guioptions-=T
"set guifont=Menlo:h14
colorscheme molokai

set nocompatible
set number
set mouse=a

" Wrap with no linebreak
set wrap
set linebreak
set nolist

" Tab stops
set textwidth=78
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab 

" Show matching brackets and parentheses
set showmatch
set matchtime=3

filetype plugin on
filetype plugin indent on
set smartindent

" Tab completion
set wildmenu
set wildmode=longest:full,list:full
set wildignore+=*.o,*.obj
set wildignore+=vendor,*.pyc,logs,tmp,.sass-cache,doc,*~

" shortcuts for tab switching
map <C-k> <C-w>k<C-w>_
map <C-j> <C-w>j<C-w>_
map <C-h> :tabp<cr>
map <C-l> :tabn<cr>

" Window switching
map ,h <C-w>h
map ,j <C-w>j
map ,k <C-w>k
map ,l <C-w>l

" Creating new windows
map ,n <C-w>n
map ,s <C-w>s
map ,v <C-w>v

" Maximizing windows
map ,- <C-w>_

" Moving windows
map ,H <C-w>H
map ,J <C-w>J
map ,K <C-w>K
map ,L <C-w>L


" NERDTree opens at startup

"autocmd VimEnter * NERDTree

nnoremap Q gqap
vnoremap Q gq

if has("autocmd") && exists("+omnifunc")
	autocmd Filetype *
		\  if &omnifunc == "" |
		\	setlocal omnifunc=syntaxcomplete#Complete |
		\  endif
endif
