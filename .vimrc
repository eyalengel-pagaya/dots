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
Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'Vallot/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required


"""""""""""""""""""""""""""""
"         Behaviour         "
"""""""""""""""""""""""""""""

set nocompatible    " Don't behave like Vi
set wildmenu        " Enhanced command line completion
set wildmode=longest,list   " Complete the longest match, then list others
set backspace=indent,eol,start  " Allow backspacing over more stuff
set confirm         " Ask to confirm instead of failing
set ignorecase      " Case insensitive search
set smartcase       " Case sensitive if search term contains capitals
set linebreak       " Allow linebreaks between words
set scrolloff=2     " Start scrolling a few lines from the border
set display+=lastline   " Always display the last line of the screen
set whichwrap+=<,>,h,l  " Allow cursor to wrap lines
set hidden          " Allow opening new buffers without saving changes
set mouse=a         " Allow mouse control in all modes
set undofile        " Persistent undo history
set switchbuf=usetab,newtab " Switch to tab if existing, else create new

set tabstop=4       " Set tab size to 4
set expandtab       " Epand tabs into spaces
set shiftwidth=4    " Width of 1 indentation level
set softtabstop=4   " How many columns the tab key inserts

set encoding=utf8


"""""""""""""""""""""""""""""
"        Interface          "
"""""""""""""""""""""""""""""

set number          " Show line numbers by default
set showmatch       " When inserting brackets, highlight the matching one
set hlsearch        " Highlight search results
set incsearch       " Highlight search results as the search is typed
set showcmd         " Show command on the bottom
set ruler           " Show line and cursor position
" set listchars=tab:·,trail:· " Show tabs and trailing space
set nolist
set laststatus=2    " Wider status line, needed for powerline
set foldmethod=syntax " Create fold points based on syntax
set nofoldenable

syntax on           " Enable syntax highlighting
colorscheme solarized
set background=dark
let g:solarized_contrast = 'high'
hi Normal guibg=NONE ctermbg=NONE       " Make backgound transparent

let g:previm_open_cmd = 'firefox-developer-edition'     " Open markdown preview in Firefox
let g:colorizer_auto_filetype='css,html'                " Colorize hex colors by default

" Remove search highlight
nnoremap <silent> <esc><esc> :noh<cr><esc>
nnoremap <silent> <return> :noh<cr><esc>

" Toggle search highlight
nnoremap <F3> :set hlsearch!<CR>

set nu rnu
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

let g:user_emmet_install_global = 0             " Emmet-vim
autocmd FileType html,css,js,ts EmmetInstall    " Emmet-vim
map <C-t> :NERDTreeToggle<CR>                   " map NERDTree to <C-t>

 set statusline+=%#warningmsg#                   " Syntastic
 set statusline+=%{SyntasticStatuslineFlag()}    " Syntastic
 set statusline+=%*                              " Syntastic
 let g:syntastic_always_populate_loc_list = 1    " Syntastic
 let g:syntastic_auto_loc_list = 1               " Syntastic
 let g:syntastic_check_on_open = 1               " Syntastic
 let g:syntastic_check_on_wq = 1                 " Syntastic
 let g:syntastic_check_on_w = 1                  " Syntastic

let g:ycm_global_ycm_extra_conf = '/home/lidor/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py' " YouCompleteMe
let g:ycm_show_diagnoistcs_ui = 1       "YouCompleteMe
let g:ycm_server_keep_logfiles = 1      "YouCompleteMe
let g:ycm_server_log_level = 'debug'    "YouCompleteMe

map <C-l> :YcmCompleter FixIt<CR>
