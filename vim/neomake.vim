" Neomake
let g:neomake_open_list=0
"let g:neomake_go_enabled_makers = ['govet', 'golint']
let g:neomake_python_enabled_makers = ['flake8']
"let g:neomake_swift_enabled_makers = ['siftpm', 'swiftlint']
"let g:neomake_python_enabled_makers = ['pep8', 'pylint']
autocmd! BufWritePost * Neomake
