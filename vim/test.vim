"let test#strategy = 'asyncrun'
"let test#strategy = 'basic'
let test#strategy = 'neovim'
"let test#strategy = 'neomake'
"let test#strategy = 'iterm'

nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

let test#python#runner = 'nose'
let g:test#runner_commands = ['Nose']
