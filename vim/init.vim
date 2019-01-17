let g:virtual_env_2 = '/Users/ah/.virtualenvs/neovim2/'
let g:virtual_env_3 = '/Users/ah/.virtualenvs/neovim3/'
let g:python_host_prog = g:virtual_env_2.'bin/python'
let g:python3_host_prog = g:virtual_env_3.'bin/python'

call plug#begin('~/src/plugged')
"
" Status Bar
Plug 'itchyny/lightline.vim'

" Themes
Plug 'altercation/vim-colors-solarized'
Plug 'joshdick/onedark.vim'
Plug 'liuchengxu/space-vim-dark'

" Tagbar
Plug 'majutsushi/tagbar'

" Neomake
Plug 'benekastah/neomake'

" Neoformat
Plug 'sbdchd/neoformat'

" Easymotion
Plug 'Lokaltog/vim-easymotion'

" Deoplete
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'zchee/deoplete-go', {'do': 'make'}
Plug 'zchee/deoplete-jedi'

" Snippets
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" NERD
Plug 'scrooloose/nerdcommenter'

" CtrlP
Plug 'ctrlpvim/ctrlp.vim'

" AG
Plug 'rking/ag.vim'

" Go
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}

" Python
Plug 'davidhalter/jedi-vim'

" Testing
Plug 'janko-m/vim-test'

" Swift
Plug 'w0rp/ale' " language checker
Plug 'mitsuse/autocomplete-swift'
Plug 'landaire/deoplete-swift'
Plug 'kballard/vim-swift'
Plug 'keith/swift.vim'
Plug 'aciidb0mb3r/SwiftDoc.vim'
Plug 'kentaroi/ultisnips-swift'
Plug 'thinca/vim-quickrun'

let g:tagbar_type_swift = {
  \ 'ctagstype': 'swift',
  \ 'kinds' : [
    \ 'e:Enums',
    \ 't:Typealiases',
    \ 'p:Protocols',
    \ 's:Structs',
    \ 'c:Classes',
    \ 'f:Functions',
    \ 'v:Variables',
    \ 'E:Extensions',
    \ 'l:Constants',
  \ ],
  \ 'sort' : 0
  \ }

au FileType swift nmap <leader>r :QuickRun swiftrun<cr>
au FileType swift nmap <leader>t :QuickRun swifttest<cr>
"autocmd FileType swift imap <buffer> <C-k> <Plug>(autocomplete_swift_jump_to_placeholder)

let g:clamp_autostart = 1
let g:clamp_libclang_file = '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'

let g:deoplete#sources#swift#source_kitten_binary = '/usr/local/bin/sourcekitten'
let g:deoplete#sources#swift#daemon_autostart = 1

nnoremap <leader>F :!swiftformat %<cr>

call plug#end()

" Settings
source $DOT/vim/settings.vim

" Themes
source $DOT/vim/themes.vim

" Deoplete
source $DOT/vim/deoplete.vim

" Python
source $DOT/vim/python.vim

" Go
source $DOT/vim/go.vim

" Testing
source $DOT/vim/test.vim

" Snippets
source $DOT/vim/snippets.vim

" Git
source $DOT/vim/git.vim

" Nerd
source $DOT/vim/nerd.vim

" Easymotion
source $DOT/vim/easymotion.vim

" Tagbar
source $DOT/vim/tagbar.vim

" CtrlP
source $DOT/vim/ctrlp.vim

" Neomake
source $DOT/vim/neomake.vim
 
" Neoformat
source $DOT/vim/Neoformat.vim
