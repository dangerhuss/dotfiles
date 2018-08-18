"
" Themes
"

set termguicolors
let profile = tolower($ITERM_PROFILE)
if profile == 'light'
	set background=light
	"colorscheme solarized
	let g:lightline = { 'colorscheme': 'wombat' }
elseif profile == 'dark'
	set background=dark
	"colorscheme solarized
	let g:lightline = { 'colorscheme': 'wombat' }
	"let g:solarized_contrast='high'
elseif profile == 'white'
	set background=light
	"colorscheme solarized
	let g:lightline = { 'colorscheme': 'wombat' }
elseif profile == 'black'
	set background=dark
	"let g:space_vim_dark_background = 233
	"color space-vim-dark
	"colorscheme space-vim-dark
	let g:lightline = { 'colorscheme': 'wombat' }
else
	set background=light
	"colorscheme solarized
	let g:lightline = { 'colorscheme': 'wombat' }
endif

let g:lightline.active = {
      \   'left': [ [ 'mode', 'paste' ],
      \		    [ 'LightLineFilename', 'gitbranch' ],
      \		    [ 'readonly', 'relativepath', 'modified' ] ]
      \ }

let g:lightline.component_function = {
      \   'gitbranch': 'fugitive#head',
      \   'filename': 'LightLineFilename'
      \ }

function! LightLineFilename()
	let name = ""
	let subs = split(expand('%'), "/") 
	let i = 1
	for s in subs
		let parent = name
		if  i == len(subs)
			let name = parent . '/' . s
		elseif i == 1
			let name = s
		else
			let name = parent . '/' . strpart(s, 0, 2)
		endif
		let i += 1
	endfor
  return name
endfunction
