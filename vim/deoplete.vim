" Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#python_path = g:python3_host_prog
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_completion_start_length = 0
let g:deoplete#setup_py_version = 'auto'
let g:deoplete#sources#jedi#show_docstring = 1

let g:deoplete#ignore_sources = {}

set completeopt=menuone,noinsert,noinsert,noselect

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> deoplete#mappings#smart_close_popup()."\<C-h>"
inoremap <expr><BS>  deoplete#mappings#smart_close_popup()."\<C-h>"
" <TAB>, <C-j> Next Completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-j>  pumvisible() ? "\<C-n>" : "\<C-j>"
" <S-TAB>, <C-k> Previous Completion.
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <expr><C-k>  pumvisible() ? "\<C-p>" : "\<C-k>"
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function() abort
  return deoplete#mappings#close_popup() . "\<CR>"
endfunction

