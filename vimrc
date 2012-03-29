set number
set textwidth=78
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set nocompatible
set wildmenu
set wildmode=list:longest,full

" reformat lines and paragraphs for human-readable text files
nnoremap Q gqap
vnoremap Q gq

syntax on
filetype on
filetype plugin indent on

" autocompletion of keywords
if has("autocmd") && exists("+omnifunc")
	autocmd Filetype *
		\  if &omnifunc == "" |
		\	setlocal omnifunc=syntaxcomplete#Complete |
		\  endif
endif
