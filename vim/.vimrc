"===================================================="
" Plugin settings
"===================================================="

set nocompatible              					" be iMproved, required
filetype off                  					" required

" => set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" => plugin installs
so ~/.vim/plugins.vim

" => All of your Plugins must be added before the following line
call vundle#end()            					" required
filetype plugin indent on    					" required

"|
" ===> CTRL+p
"|
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'	" settings Ignore the following directories for CTRL+P

"|
" ===> NerdTree
"|
let NERDTreeHijackNetrw = 0					" Remove dash so vinegar is used instead

" => all mappings
so ~/.vim/mappings.vim




"===================================================="
" Global configs
"===================================================="

syntax enable

set backspace=indent,eol,start

" => Change map leader to comma
let mapleader = ','

" => Set line numbers
set number

" => Open all buffers in tabs
:au BufAdd,BufNewFile * nested tab sball




"===================================================="
" Visuals
"===================================================="

colorscheme atom-dark
set t_CO=256




"===================================================="
" Search
"===================================================="

set hlsearch
set incsearch




"===================================================="
" Split management
"===================================================="

" => Split view setttings
set splitbelow
set splitright




"===================================================="
" Auto commands`
"===================================================="

" Automatically source vimrc on save
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
