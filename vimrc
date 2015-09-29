" vimrc for coding

" Because Escape is too far
inoremap <C-L> <Esc>

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'

Plug 'mileszs/ack.vim'
Plug 'bling/vim-airline'
Plug 'Townk/vim-autoclose'
Plug 'mattn/emmet-vim'
Plug 'kballard/vim-fish'
Plug 'tpope/vim-fugitive'
Plug 'Yggdroot/indentLine'
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'elzr/vim-json'
Plug 'goatslacker/mango.vim'
Plug 'edsono/vim-matchit'
Plug 'scrooloose/nerdtree'
Plug 'moll/vim-node'
Plug 'rstacruz/vim-opinion'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
Plug 'Valloric/YouCompleteMe'

call plug#end()

" YouCompleteMe
"let g:ycm_autoclose_preview_window_after_completion = 1
set completeopt-=preview

" Syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Hybrid mode in numbering lines
"set number
set relativenumber

" Remove trailing whitespaces before write
autocmd BufWritePre * :%s/\s\+$//e

set background=dark
color mango

