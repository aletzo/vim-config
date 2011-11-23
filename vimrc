call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

colorscheme desert

filetype plugin on              " use the file type plugins

set ai                          " Auto indenting
set autoindent                  " set the cursor at same indent as line above
set bs=2                        " backspacing over everything in insert mode
set copyindent                  " use existing indents for new indents
set expandtab                   " expand <Tab>s with spaces; death to tabs!
set foldmethod=marker           " Folding Stuff
set history=100                 " keep 100 lines of history
set hlsearch                    " highlight the last searched term
set incsearch                   " incremental search
set ignorecase                  " search ignoring case
set nocompatible                " Use Vim defaults
set number
set preserveindent              " save as much indent structure as possible
set ruler                       " show the cursor position
set shiftround                  " always round indents to multiple of shiftwidth
set shiftwidth=4
set showcmd
set showmatch                   " show matching bracket
set smarttab
set softtabstop=4
set tabstop=4
set viminfo='20,\"200           " keep a .viminfo file

syntax on                       " syntax highlighting
