"Fugitive
set laststatus=2
noremap <leader>dp :diffput <BAR> :diffupdate <CR>
noremap <leader>do :diffget <BAR> :diffupdate <CR>
noremap <leader>dO :diffget <BAR> :diffupdate <CR> ]czz
noremap <leader>gw :Gwq <CR>
noremap <leader>gr :Gread <CR>
noremap <leader>dd :Gvdiff <CR>
noremap <leader>gs :Gstatus <CR>
noremap <leader>gl :Glog <CR>

"Gitgutter
set updatetime=500
let g:gitgutter_diff_args = '-w'
