"""""""""""""
"   C/C++:  "
"""""""""""""
autocmd FileType c map <buffer> <F5> :wa <bar> :VimuxRunCommand("make <bar><bar> gcc *.c")<CR>
autocmd FileType cpp map <buffer> <F5> :wa <bar> :("make \|\| g++ *.cpp")<CR>
autocmd FileType c,cpp nnoremap <buffer> <space><space> /<++><Enter>"_d4l:noh<return>i
autocmd FileType c,cpp inoremap <buffer> <space><space> <esc><esc>/<++><Enter>"_d4l:noh<return>i

" Snippets
autocmd FileType c,cpp iabbrev inc #include<><esc>
autocmd FileType c,cpp iabbrev incl #include""<esc>
autocmd FileType c,cpp iabbrev for for(int<++> = 0; <++> < <++>; <++>++)<CR>{<CR>}<esc>O<esc>2k0=4j<space><space>


"""""""""""""""""
"   Web shit:   "
"""""""""""""""""
:let g:user_emmet_install_global = 0
autocmd FileType html,css,js,jsx,ts,tsx EmmetInstall
autocmd FileType html,css,js,jsx,ts,tsx nnoremap <Space><Space> /<.*><Enter>f>:noh<return>
autocmd FileType html,css,js,jsx,ts,tsx inoremap <Space><Space> <esc><esc>/<.*><Enter>f>:noh<return>a
autocmd FileType ts,tsx map <buffer> <F5> :wa <bar> :VimuxRunCommand("tsc " . expand('%'))<CR>
autocmd filetype js,jsx,ts,tsx let g:ale_fixers = ['prettier', 'eslint']


"""""""""""""""
"   Python:   "
"""""""""""""""
map <buffer> <F5> :wa <bar> VimuxRunCommand("python " . expand('%'))<CR>

