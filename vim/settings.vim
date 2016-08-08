" => Set line numbers
set number

" => Set default backspace
set backspace=indent,eol,start

" => Set current cursor line
set cursorline
set cursorcolumn

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

" => 1 ktab == 4 spaces
set shiftwidth=4
set softtabstop=4
set tabstop=4

" => Write to file automatically
set autowriteall

" => Set autocomplete
set complete=.,w,b,u

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" => Add eslint to vim for checking syntax
let g:syntastic_javascript_checkers = ['eslint']

" => CTRL + P in current directory if not then .git ancestor
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$|bower_components|node_modules|tmp|_build'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"|
" ===> NerdTree
"|
let NERDTreeHijackNetrw = 0					" Remove dash so vinegar is used instead

"|
" ===> Disable folding for vim markdown
"|
let g:vim_markdown_folding_disabled = 1

"|
" ===> Gitgutter turn it on
"|
let g:gitgutter_sign_column_always = 1
