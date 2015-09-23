call pathogen#runtime_append_all_bundles()
call pathogen#helptags()



"colorscheme desert
colorscheme solarized

set guifont=Monaco\ for\ Powerline:h11
let Powerline_symbols = 'fancy'



" treat the *.php files also as html files (useful for snipMate but destroys taglist)
"au BufRead *.php set ft=php.html
"au BufNewFile *.php set ft=php.html


filetype on                     " determines the type of the current file
filetype plugin on              " use the file type plugins

let Tlist_Ctags_Cmd='/usr/local/bin/ctags' "tell taglist where to find ctags
let Tlist_Show_One_File = 1                      " Only show tags for current buffer





" activate the rainbow parentheses plugin
au syntax * cal rainbow#activate() 

" PHP syntax checking  
map <C-P> :!php -l %<CR>      

" toggle the NERDTree
map <F2> :NERDTreeToggle<CR>

" toggle the taglist
map <F3> :TlistToggle<CR>

" activate html snippets in php files
map <F7> :set ft=php.html<CR>:highlight Normal guibg=Black<CR>

" deactivate html snippets in php files
map <F8> :set ft=php<CR>:set background=dark<CR>


" source current file (e.g. to load new vimrc configuration)
map <F5> :so %<CR> 


" disable the arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

inoremap jk <Esc>
" noremap jk <Esc> " this sucks


" use the arrow keys to move between split windows
nnoremap <silent> <right> <c-w>l
nnoremap <silent> <left> <c-w>h
nnoremap <silent> <up> <c-w>k
nnoremap <silent> <down> <c-w>j


" Swap ; and :  Convenient -- NOT :(
"nnoremap ; :
"nnoremap : ;


" disable the F1 help screen
nmap <F1> <nop>


set autoindent                  " set the cursor at same indent as line above
set autoread                    " watch for file changes
set background=dark
set bs=2                        " backspacing over everything in insert mode

" Change the 'completeopt' option so that Vim's popup menu doesn't select the
" first completion item, but rather just inserts the longest common text of
" all matches; and the menu will come up even if there's only one match. (The
" longest setting is responsible for the former effect and the menuone is
" responsible for the latter.)
" NOT WORKING (why ???)
"set completeopt=longest,menuone

set colorcolumn=80              " set the 80 characters soft line limit
set copyindent                  " use existing indents for new indents
set dir=~/tmp                   " use this directory to save the swp files
set encoding=utf-8
set expandtab                   " expand <Tab>s with spaces; death to tabs!
set foldmethod=marker           " Folding Stuff
set hidden                      " Hide buffers when they are abandoned
set history=100                 " keep 100 lines of history
set hlsearch                    " highlight the last searched term
set incsearch                   " incremental search
set ignorecase                  " search ignoring case
set laststatus=2                " always show the statusline
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
set smartcase                   " if the search terms have at least one uppercase letter, the search will become case-sensitive
set smarttab
set softtabstop=4
set tabstop=4
set viminfo='20,\"200           " keep a .viminfo file

syntax on                       " syntax highlighting

" which tags files to load
set tags=/var/tags
