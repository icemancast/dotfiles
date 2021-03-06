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




"===================================================="
" Global configs
"===================================================="

syntax enable

" => Change map leader to comma
let mapleader = ','

" => Open all buffers in tabs
" :au BufAdd,BufNewFile * nested tab sball

" => Settings for vim
so ~/.vim/settings.vim




"===================================================="
" Mappings
"===================================================="

" => Mappings
so ~/.vim/mappings.vim




"===================================================="
" Visuals
"===================================================="

colorscheme onedark
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
" Auto commands
"===================================================="

" Automatically source vimrc on save
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END




"===================================================="
" PHP vim settings
"===================================================="

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END




"===================================================="
" Notes and tips
"===================================================="

" - ci" to change text in between quotes
" - vi" select between quotes
" - ctrl+] jump to method definition when cursor is on method
" - ctrl+^ to jump back
" - :Ag "string" search for string in project
" - :Gsearch for find and replace
" - <Leader>lm for laravel - php artisam make:
" - <Leader>lr for laravel - edit routes file
" - <Leader>fs for full screen split
" - <Leader>= for back to normal scren split
