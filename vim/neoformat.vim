let g:neoformat_enabled_python = ['yapf']
"let g:neoformat_enabled_python = ['yapf', 'autopep8']
"let g:neoformat_enabled_python = ['yapf', 'autopep8', 'isort']
let g:neoformat_run_all_formatters = 0

"augroup fmt
  "autocmd!
  "autocmd BufWritePre * undojoin | Neoformat
"augroup END
