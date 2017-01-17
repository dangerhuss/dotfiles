function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

call plug#begin('~/src/plugged')

" Themes
Plug 'altercation/vim-colors-solarized'

" Go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" Deoplete
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'zchee/deoplete-go', { 'do': 'make'}

" Snippets
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" NERD
Plug 'scrooloose/nerdcommenter'

" Neomake
Plug 'benekastah/neomake'

" Easymotion
Plug 'Lokaltog/vim-easymotion'

" Tagbar
Plug 'majutsushi/tagbar'

" CtrlP
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

" Settings
source $DOT/vim/settings.vim

" Themes
source $DOT/vim/themes.vim

" Go
source $DOT/vim/go.vim

" Deoplete
source $DOT/vim/deoplete.vim

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
