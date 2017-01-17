"
" Themes
"
"
let profile = tolower($ITERM_PROFILE)
if profile == 'light'
	set background=light
	colorscheme solarized
	let g:solarized_termcolors=256
elseif profile == 'dark'
	set background=dark
	colorscheme solarized
	let g:solarized_termcolors=256
	"let g:solarized_contrast='high'
else
	set background=dark
endif
