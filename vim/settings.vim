" => Set line numbers
set number

" => Set default backspace
set backspace=indent,eol,start

" => Set current cursor line
set cursorline

" => Plugin settings for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" => Turn off auto backups
set nobackup
set nowb
set noswapfile

" => Use spaces instead of tabs
set expandtab

" => Be smart when using tabs ;)
set smarttab

" => 1 tab == 4 spaces
set shiftwidth=4
set softtabstop=4
set tabstop=4

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" => Add eslint to vim for checking syntax
let g:syntastic_javascript_checkers = ['eslint']

" => CTRL + P in current directory if not then .git ancestor
let g:ctrlp_working_path_mode = 'ra'

" => snipmate settings
let g:snippets_dir='~/.vim/snippets'
