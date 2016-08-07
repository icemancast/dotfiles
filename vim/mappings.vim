"===================================================="
" Mappings
"===================================================="

" => Open vim rc for edit"
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" => Remove search hilight
nmap <Leader><space> :nohlsearch<cr>

" => Close current buffer
nmap <Leader>c :bd<cr>

" => Close all buffers open tree
"nmap <Leader>cc :NERDTreeClose<bar>:bufdo bd<cr>-

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

" => Sort by length
"http://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>

" => Laravel Specific
" ===============================================
nmap <Leader>lr :e app/Http/routes.php<cr>
nmap <Leader>lm :!php artisan make:
nmap <Leader><Leader>m :e app/Models<cr>
nmap <Leader><Leader>v :e resources/views<cr>
nmap <Leader><Leader>c :e app/Http/Controllers<cr>
