"let test#strategy = 'asyncrun'
"let test#strategy = 'basic'
"let test#strategy = 'neomake'
"let test#strategy = 'iterm'
let test#strategy = 'neovim'
"let test#neovim#term_position = "rightbelow"
"let test#neovim#term_position = "vertical"

"let test#neovim#term_position = "botright"

nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

let g:test#preserve_screen = 1

"let test#python#runner = 'nose'
"let g:test#runner_commands = ['Nose']
let test#python#runner = 'djangotest'
let test#python#djangotest#executable = 'docker-compose exec web python /code/manage.py test -v2'
"let g:test#runner_commands = ['docker-compose exec web manage.py test']
