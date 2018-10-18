" Neomake
"let g:neomake_open_list=2
call neomake#configure#automake('nw', 1000)
"
"let neomake_status_str = neomake#statusline#get(bufnr, {
          "\ 'format_running': '… ({{running_job_names}})',
          "\ 'format_loclist_ok':
          "\   (a:active ? '%#NeomakeStatusGood#' : '%*').'✓',
          "\ 'format_quickfix_ok': '',
          "\ 'format_quickfix_issues': (a:active ? '%s' : ''),
          "\ 'format_status': '%%(%s'
          "\   .(a:active ? '%%#StatColorHi2#' : '%%*')
          "\   .'%%)',
          "\ })

let g:neomake_error_sign = {'text': 'e', 'texthl': 'NeomakeErrorSign'}
let g:neomake_warning_sign = {'text': 'w', 'texthl': 'NeomakeWarningSign'}
let g:neomake_message_sign = {'text': 'm', 'texthl': 'NeomakeMessageSign'}
let g:neomake_info_sign = {'text': 'i', 'texthl': 'NeomakeInfoSign'}



let g:neomake_python_enabled_makers = ['python', 'frosted', 'pyflakes', 'pydocstyle', 'pylint']
"let g:neomake_python_enabled_makers = ['flake8', 'pep8']
let g:neomake_python_tempfile_enabled = 0


" Flake8
let g:neomake_python_frosted_exe = g:virtual_env_2.'bin/frosted'
let g:neomake_python_pyflakes_exe = g:virtual_env_2.'bin/pyflakes'
let g:neomake_python_pydocstyle_exe = g:virtual_env_2.'bin/pydocstyle'
"let g:neomake_python_pylint_exe = g:virtual_env_2.'bin/pylint'
let g:neomake_python_flake8_exe = g:virtual_env_2.'bin/flake8'

autocmd! BufWritePost * Neomake
