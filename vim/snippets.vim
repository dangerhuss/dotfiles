let g:neosnippet#snippets_directory=$DOT.'/vim/snippets/'
let g:go_snippet_engine = "neosnippet"
let g:neosnippet#disable_runtime_snippets = {'go' : 1}

" Plugin key-mappings.
imap <C-l>     <Plug>(neosnippet_expand_or_jump)
smap <C-l>     <Plug>(neosnippet_expand_or_jump)
xmap <C-l>     <Plug>(neosnippet_expand_target)
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
