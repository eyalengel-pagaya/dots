""""""""""""
"   C/C++  "
""""""""""""
    autocmd FileType c,cpp nnoremap <buffer> <C-space> /<++><Enter>"_d4l:noh<return>i
    autocmd FileType c,cpp inoremap <buffer> <C-space> <esc><esc>/<++><Enter>"_d4l:noh<return>i

" Snippets
    autocmd FileType c,cpp iabbrev inc #include <<++>><esc>0<C-space>
    autocmd FileType c,cpp iabbrev incl #include "<++>"<esc>0<C-space>
    autocmd FileType c,cpp iabbrev for for(int<++> = 0; <++> < <++>; <++>++)<CR>{<CR>}<esc>O<esc>2k0=4j<C-space>

    autocmd FileType c,cpp let g:ale_fix_on_save = 1
    autocmd FileType c,cpp let g:ale_completion_enabled = 1

" C-Only snippets
    autocmd FileType c iabbrev c printf(<++>);<esc>0<C-space>

" Cpp-Only snippets
    autocmd FileType cpp iabbrev c cout <<<++> << endl;<esc>0<C-space>
    autocmd FileType h,hpp,cpp iabbrev u using<++>::<++>;<esc>0<C-space>
    autocmd FileType h,hpp,cpp iabbrev us using std::<++>;<esc>0<C-space>


""""""""""""""
"   Python   "
""""""""""""""
    autocmd FileType python nnoremap <buffer> <leader>l :PymodeLintAuto<CR>
    autocmd BufRead *.py,*.pyw :PymodeLint


""""""""""""""""
"   Web shit   "
""""""""""""""""
    let g:user_emmet_install_global = 0

    autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript         " Treat tsx and jsx as ts and js

    autocmd FileType javascript,typescript,js,jsx,ts,tsx,html nnoremap <buffer> <C-space> /<++><Enter>"_d4l:noh<return>i
    autocmd FileType javascript,typescript,js,jsx,ts,tsx,html inoremap <buffer> <C-space> <esc><esc>/<++><Enter>"_d4l:noh<return>i

    autocmd FileType html,css,js,jsx,ts,tsx,javascript,typescript EmmetInstall
    autocmd FileType html,css,js,jsx,ts,tsx,javascript,typescript nnoremap <buffer><C-j> /<.*><Enter>f>:noh<return>
    autocmd FileType html,css,js,jsx,ts,tsx,javascript,typescript inoremap <buffer><C-j> <esc><esc>/<.*><Enter>f>:noh<return>a
    autocmd FileType html,css,js,jsx,ts,tsx,javascript,typescript nnoremap <buffer><C-k> /<.*><Enter>2Nf>:noh<return>
    autocmd FileType html,css,js,jsx,ts,tsx,javascript,typescript inoremap <buffer><C-k> <esc><esc>/<.*><Enter>2Nf>:noh<return>a
    autocmd FileType ts noremap <buffer> <F5> :wa <bar> :VimuxRunCommand("tsc " . expand('%'))<CR>
    " autocmd filetype js,jsx,ts,tsx,typescript let g:ale_fixers = ['prettier', 'eslint']

    let g:colorizer_auto_filetype = 'ts,tsx,typescript,js,jsx,css,html'    " Colorize hex colors by default
    let g:previm_open_cmd = 'firefox-developer-edition'                    " Open markdown preview in Firefox

" Snippets
    autocmd FileType javascript,typescript,js,jsx,ts,tsx,html iabbrev clog console.log(<++>);<esc>0<C-space>


"""""""""""""
"   Java    "
"""""""""""""
    autocmd FileType java nnoremap <buffer> <C-space> /<++><Enter>"_d4l:noh<return>i
    autocmd FileType java inoremap <buffer> <C-space> <esc><esc>/<++><Enter>"_d4l:noh<return>i
    autocmd FileType java iabbrev for for(int<++> = 0; <++> < <++>; <++>++)<CR>{<CR>}<esc>O<esc>2k0=4j<C-space>

" Snippets
    autocmd FileType java iabbrev syso System.out.println()<esc>
