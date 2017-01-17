"CtrlP
let g:ctrlp_buftag_types = {'go' : '--language-force=go --golang-types=ft'}
let g:ctrlp_root_markers = ['.git']
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20'
let g:ctrlp_extensions = ['dir', 'buffertag', 'bookmarkdir', 'declarations']
let g:ctrlp_open_multiple_files = '3vjr'
let g:ctrlp_follow_symlinks = 1
"nnoremap <C-P> :CtrlPBookmarkDir<CR>
