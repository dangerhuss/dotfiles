au FileType go nmap <leader>t <Plug>(go-test-func)
au FileType go nmap <leader>T <Plug>(go-test)

au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <leader>C <Plug>(go-coverage-clear)

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

au FileType go nmap <Leader>a <Plug>(go-alternate)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nnoremap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)

augroup go
	autocmd!
	autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
	autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
	autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
augroup END

let g:go_echo_command_info=1

let g:go_term_enabled = 1
let g:go_auto_type_info = 1

let g:go_auto_sameids = 1
let g:go_test_timeout = '1s'
let g:go_fmt_command = "goimports"
let g:go_doc_keywordprg_enabled = 1
let g:go_def_mode = 'guru'
let g:go_fmt_fail_silently = 0
let g:go_metalinter_enabled = 1

let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:tagbar_type_go = {  
\	  'ctagstype' : 'go',
\	  'kinds'     : [
\		  'p:package',
\		  'i:imports:1',
\		  'c:constants',
\		  'v:variables',
\		  't:types',
\		  'n:interfaces',
\		  'w:fields',
\		  'e:embedded',
\		  'm:methods',
\		  'r:constructor',
\		  'f:functions'
\	  ],
\	  'sro' : '.',
\	  'kind2scope' : {
\		  't' : 'ctype',
\		  'n' : 'ntype'
\	  },
\	  'scope2kind' : {
\		  'ctype' : 't',
\		  'ntype' : 'n'
\	  },
\	  'ctagsbin'  : 'gotags',
\	  'ctagsargs' : '-sort -silent'
\ }
