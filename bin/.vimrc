set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'dsawardekar/wordpress.vim'

call vundle#end()            " required

filetype plugin indent on    " required

syntax enable

colorscheme atom-dark

set backspace=indent,eol,start

let maploader = ','

set number

set linespace=3

"----------------- Visuals  ----------------"

set guifont=Menlo_Regular:h16

set splitbelow
set splitright

"----------------- Searching ----------------"

set hlsearch
set incsearch

"----------------- Mappings ----------------"


nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader><Space> :nohlsearch<cr>
nmap <D-1> :NERDTreeToggle<cr>
nmap <Leader>1 :NERDTreeToggle<cr>


"----------------- Auto Commands -----------"
augroup autosourcing
	autocmd!	
	autocmd BufWritePost .vimrc source %
augroup END
