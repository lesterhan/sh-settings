syntax enable
colorscheme badwolf
set tabstop=4
set softtabstop=4
set expandtab
set number
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch

" turn off search highlight with ,<space>
nnoremap <leader><space> :nohlsearch<CR>

set foldenable
set foldlevelstart=10
set foldnestmax=10

" space open/closes folds
nnoremap <space> za

set foldmethod=indent

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" highlight last inserted text
nnoremap gV `[v`]
