"""""""""""""""""""""""""""""
"          Vundle           "
"""""""""""""""""""""""""""""

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'KabbAmine/vCoolor.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
" Plugin 'scrooloose/syntastic'
Plugin 'Vallot/YouCompleteMe'
Plugin 'benmills/vimux' 
Plugin 'scrooloose/nerdcommenter'
Plugin 'leafgarland/typescript-vim'
Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'w0rp/ale'
" Plugin 'Chiel92/vim-autoformat'
Plugin 'sbdchd/neoformat'

call vundle#end()            " required
filetype plugin indent on    " required


"""""""""""""""""""""""""""""""""""""
"       Plugins Configurations      "
"""""""""""""""""""""""""""""""""""""

" Style 
colorscheme solarized
set background=dark
hi Normal guibg=NONE ctermbg=NONE       " Make backgound transparent
let g:solarized_contrast = 'high'
let g:colorizer_auto_filetype = 'ts,tsx,js,jsx,css,html'    " Colorize hex colors by default


" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '/home/lidor/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_show_diagnoistcs_ui = 1
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
map <C-l> :YcmCompleter FixIt<CR>


" NERDTree
let g:NERDSpaceDelims = 1
map <C-t> :NERDTreeToggle<CR>


" Syntastic
" set statusline+=%#warningmsg#                   " Syntastic
" set statusline+=%{SyntasticStatuslineFlag()}    " Syntastic
" set statusline+=%*                              " Syntastic
" let g:syntastic_always_populate_loc_list = 1    " Syntastic
" let g:syntastic_auto_loc_list = 1               " Syntastic
" let g:syntastic_check_on_open = 1               " Syntastic
" let g:syntastic_check_on_wq = 1                 " Syntastic
" let g:syntastic_check_on_w = 1                  " Syntastic

" let g:formatter_yapf_style = 'pep8'
" autocmd BufWrite,BufRead * :AutoFormat
" noremap <F6> :AutoFormat<CR>
" inoremap <F6> :AutoFormat<CR>

" let g:ale_fix_on_save = 1
