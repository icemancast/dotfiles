"===================================================="
" Mappings
"===================================================="

" => Open vim rc for edit"
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" => Remove search hilight
nmap <Leader><space> :nohlsearch<cr>

" => Map vertical split navigation
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>
nmap <Leader>fs <C-W><bar>
nmap <Leader>= <C-W>=
" nmap <C><bar> <C-W><bar>

" => Toggle nerd tree easier
nmap nt :NERDTreeToggle<cr>

" => Ctrl P buffer file tag
nmap <C-R> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>

" => Comment out line
nmap <Leader>/ <Leader>ci

" => Copy and past all
nmap <leader>y :w !pbcopy<cr><cr>
nmap <leader>p :r !pbpaste<cr>

" => Tabs configuration
nmap ( :bprev<cr>
nmap ) :bnext<cr>

" => Ctags
nmap <Leader>f :tag<space>

" => Laravel Specific
" ===============================================
nmap <Leader>lr :e app/Http/routes.php<cr>
nmap <Leader>lm :!php artisan make:
nmap <Leader><Leader>m :e app/Models<cr>
nmap <Leader><Leader>v :e resources/views<cr>
nmap <Leader><Leader>c :e app/Http/Controllers<cr>
