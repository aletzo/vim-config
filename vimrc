call pathogen#runtime_append_all_bundles()
call pathogen#helptags()



colorscheme desert



filetype on                     " determines the type of the current file
filetype plugin on              " use the file type plugins



" PHP syntax checking  
map <C-P> ;!php -l %<CR>      

" toggle the NERDTree
map <F2> ;NERDTreeToggle<CR>

" source current file (e.g. to load new vimrc configuration)
map <F5> ;so %<CR> 



" Swap ; and :  Convenient.
nnoremap ; :
nnoremap : ;



set autoindent                  " set the cursor at same indent as line above
set autoread                    " watch for file changes
set bs=2                        " backspacing over everything in insert mode
set copyindent                  " use existing indents for new indents
set expandtab                   " expand <Tab>s with spaces; death to tabs!
set foldmethod=marker           " Folding Stuff
set hidden                      " Hide buffers when they are abandoned
set history=100                 " keep 100 lines of history
set hlsearch                    " highlight the last searched term
set incsearch                   " incremental search
set ignorecase                  " search ignoring case
set matchtime=5                 " blink matching chars for .x seconds
set nocompatible                " Use Vim defaults
set noerrorbells                " No error bells please
set number                      " display the line numbers
set preserveindent              " save as much indent structure as possible
set ruler                       " show the cursor position
set scrolloff=5                 " keep at least 5 lines around the cursor
set shiftround                  " always round indents to multiple of shiftwidth
set shiftwidth=4
set showcmd                     " This shows what you are typing as a command
set showmatch                   " show matching bracket
set smarttab
set softtabstop=4
set tabstop=4
set viminfo='20,\"200           " keep a .viminfo file

syntax on                       " syntax highlighting

