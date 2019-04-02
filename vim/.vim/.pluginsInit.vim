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
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'benmills/vimux'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'w0rp/ale'
    " Plugin 'Chiel92/vim-autoformat'
    Plugin 'sbdchd/neoformat'

    Plugin 'mxw/vim-jsx'
    Plugin 'ianks/vim-tsx'
    Plugin 'leafgarland/typescript-vim'
    Plugin 'peitalin/vim-jsx-typescript'

    Plugin 'python-mode/python-mode'

    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'

    Plugin 'terryma/vim-multiple-cursors'

    Plugin 'junegunn/goyo.vim'
   Plugin 'PotatoesMaster/i3-vim-syntax'

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


" YouCompleteMe
    let g:ycm_global_ycm_extra_conf = '/home/lidor/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
    let g:ycm_show_diagnoistcs_ui = 1
    let g:ycm_server_keep_logfiles = 1
    let g:ycm_server_log_level = 'debug'
    map <C-l> :YcmCompleter FixIt<CR>


" NERDTree
    let g:NERDSpaceDelims = 1
    map <C-t> :NERDTreeToggle<CR>


" Format
    " let g:formatter_yapf_style = 'pep8'
    " autocmd BufWrite,BufRead * :AutoFormat
    " noremap <F6> :AutoFormat<CR>
    " inoremap <F6> :AutoFormat<CR>
    let g:ale_fix_on_save = 1
    let g:ale_completion_enabled = 1


" Python mode
    let g:pymode_python = 'python3'


" Airline
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
    let g:airline_theme = 'base16'
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''


" vim-multiple-cursors
    let g:multi_cursor_start_word_key      = '<C-n>'
    let g:multi_cursor_select_all_word_key = '<A-n>'
    let g:multi_cursor_start_key           = 'g<C-n>'
    let g:multi_cursor_select_all_key      = 'g<A-n>'
    let g:multi_cursor_next_key            = '<C-n>'
    let g:multi_cursor_prev_key            = '<C-p>'
    let g:multi_cursor_skip_key            = '<C-x>'
    let g:multi_cursor_quit_key            = '<Esc>'

