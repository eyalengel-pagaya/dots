"""""""""""""""""""""""""""""
"         Behaviour         "
"""""""""""""""""""""""""""""

" General
    autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif    " Open vim in last edit position
    set nocompatible                " Don't behave like Vi
    set wildmenu                    " Enhanced command line completion
    set wildmode=longest,list       " Complete the longest match, then list others
    set backspace=indent,eol,start  " Allow backspacing over more stuff
    set confirm                     " Ask to confirm instead of failing
    set ignorecase                  " Case insensitive search
    set smartcase                   " Case sensitive if search term contains capitals
    set linebreak                   " Allow linebreaks between words
    set scrolloff=2                 " Start scrolling a few lines from the border
    " set whichwrap+=<,>,h,l        " Allow cursor to wrap lines
    set hidden                      " Allow opening new buffers without saving changes
    set mouse=a                     " Allow mouse control in all modes
    set undofile                    " Persistent undo history
    set switchbuf=usetab,newtab     " Switch to tab if existing, else create new
    set splitbelow splitright       " Create new splits to the down/right
    set encoding=utf8               " Pretty self-explanatory, eh?
    set sessionoptions-=options

" Tabs, spaces and indenting
    set tabstop=4       " Set tab size to 4
    set expandtab       " Epand tabs into spaces
    set shiftwidth=4    " Width of 1 indentation level
    set softtabstop=4   " How many columns the tab key inserts
    set autoindent      " Pretty self-explanatory, eh?
    filetype indent on
    set smartindent
    " autocmd BufRead,BufWritePre * normal gg=G
    " autocmd BufWritePre * %s/\s\+$//      " Remove trailing white spaces


"""""""""""""""""""""""""""""
"        Interface          "
"""""""""""""""""""""""""""""

    set number          " Show line numbers by default
    set showmatch       " When inserting brackets, highlight the matching one
    set hlsearch        " Highlight search results
    set incsearch       " Highlight search results as the search is typed
    set showcmd         " Show command on the bottom
    set ruler           " Show line and cursor position
    set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
    " set listchars=tab:··,trail:· " Show tabs and trailing space
    set nolist
    " set list
    set laststatus=2    " Wider status line, needed for powerline
    set foldmethod=syntax " Create fold points based on syntax
    set nofoldenable
    set display+=lastline   " Always display the last line of the screen

" Automatic show line-numbers and relative-line-numbers to the right
    set nu rnu
    augroup numbertoggle
        autocmd!
        autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
        autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
    augroup END

" Style
    syntax on           " Enable syntax highlighting
    colorscheme solarized
    set background=dark
    let g:solarized_contrast = 'high'
    hi Normal guibg=NONE ctermbg=NONE       " Make backgound transparent

" Remove search highlight
    nnoremap <silent> <esc><esc> :noh<cr><esc>
    nnoremap <silent> <return> :noh<cr><esc>

" Toggle search highlight
    nnoremap <F3> :set hlsearch!<CR>

" Toggle spell-checker
    map <F6> :set spell!<CR>

" Make Y yank to end of line (just like D and C act)
    nnoremap Y y$
