syntax enable

set mouse=a 			 " enable mouse for (a)ll modes
set backspace=2 		 " make backspace work like most other apps
set autoindent
set smartindent
set smarttab
set autoread                     " update the file if changed externally, unless it was deleted
set clipboard=unnamed            " yank and paste with the system clipboard
set directory-=.                 " don't store swapfiles in the current directory
set ignorecase                   " case-insensitive search
set smartcase                    " case-sensitive search if any caps
set incsearch                    " search as you type
set laststatus=2                 " always show statusline
set scrolloff=3                  " show context above/below cursorline
set wildmenu                     " show a navigable menu for tab completion
set wildmode=longest,list,full
set showtabline=0 		 " don't show the tabline
set tags+=./.tags,.tags;$HOME

" Statusline
set noshowmode 			 " don't show the statusbar
set statusline=
set statusline+=%0*[\ %N\ ]%*             "buffer number
set statusline+=%0*\ %<%F%*               "full path
set statusline+=%0*\%m%*                  "modified flag
"set statusline+=%0*%=%{fugitive#head()}%* 
set statusline+=%0*%=%5l%*                "current line
set statusline+=%0*/%L%*                  "total lines
"set statusline=%F%m%r%h%w\ 
"set statusline+=%{fugitive#statusline()}\ 
"set statusline+=\ [line\ %l\/%L]

" Leader
let mapleader = "\<Space>"
nnoremap <Space> <Nop>

" VIMRC
nmap <silent> <leader>ev :e $DOT/vim/init.vim<CR>  " edit
nmap <silent> <leader>sv :so $DOT/vim/init.vim<CR> " source

" Resize Width
nnoremap <silent> <Leader>+ :exe "vertical resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "vertical resize " . (winheight(0) * 2/3)<CR>

" Window
nmap <leader>swh :topleft  vnew<CR>
nmap <leader>swl :botright vnew<CR>
nmap <leader>swk :topleft  new<CR>
nmap <leader>swj :botright new<CR>

" Buffer
set hidden
nmap <leader>sh :leftabove  vnew<CR>
"tmap <leader>sh <C-\><C-n>:leftabove vnew<CR>
nmap <leader>sl :rightbelow vnew<CR>
"tmap <leader>sl <C-\><C-n>:rightbelow vnew<CR>
nmap <leader>sk :leftabove  new<CR>
"tmap <leader>sk <C-\><C-n>:leftabove vnew<CR>
nmap <leader>sj :rightbelow new<CR>
"tmap <leader>sj <C-\><C-n>:rightbelow vnew<CR>
nmap <C-l> :bnext<CR>
tmap <C-l> <C-\><C-n> :bnext<CR>
nnoremap <Right> :bnext<CR>
nmap <C-h> :bprevious<CR>
tmap <C-h> <C-\><C-n> :bprevious<CR>
nnoremap <Left> :bprevious<CR>
nnoremap <leader>q :bp <BAR> bd #<CR>
tmap <leader>q <C-\><C-n>:bp <BAR> bd! #<CR>
nnoremap <leader>Q :q<CR>
tmap <leader>Q <C-\><C-n>:q<CR>

" Terminal
nnoremap <leader>T :term<CR>i
tnoremap <C-[> <C-\><C-n>
tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-w>l <C-\><C-n><C-w>l
tnoremap <C-w><C-h> <C-\><C-n><C-w>h
tnoremap <C-w><C-j> <C-\><C-n><C-w>j
tnoremap <C-w><C-k> <C-\><C-n><C-w>k
tnoremap <C-w><C-l> <C-\><C-n><C-w>l
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

" Search
" These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv
