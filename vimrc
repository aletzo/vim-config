"colorscheme desert
colorscheme solarized

if ! has('gui_running')
  set t_Co=256
  let g:solarized_termcolors=256
endif

set guifont=Monaco\ for\ Powerline:h11
let Powerline_symbols = 'fancy'



" treat the *.php files also as html files (useful for snipMate but destroys taglist)
"au BufRead *.php set ft=php.html
"au BufNewFile *.php set ft=php.html


filetype on                     " determines the type of the current file
filetype plugin on              " use the file type plugins

let Tlist_Ctags_Cmd='/usr/local/bin/ctags' " tell taglist where to find ctags
let Tlist_Show_One_File = 1                " Only show tags for current buffer


" PHP syntax checking  
map <D-F12> :!php -l %<CR>      

" toggle the NERDTree
map <D-F2> :NERDTreeToggle<CR>

" toggle the NERDTree
map <D-F3> :NERDTreeFind<CR>

" toggle the taglist
map <D-F4> :TlistToggle<CR>


" source current file (e.g. to load new vimrc configuration)
map <C-S> :so %<CR> 

" disable the arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

inoremap jj $
inoremap jk <Esc>


" use the arrow keys to move between split windows
nnoremap <silent> <right> <c-w>l
nnoremap <silent> <left> <c-w>h
nnoremap <silent> <up> <c-w>k
nnoremap <silent> <down> <c-w>j

nnoremap <silent> <d-down> <c-w>-
nnoremap <silent> <d-up> <c-w>+
nnoremap <silent> <d-left> <c-w><
nnoremap <silent> <d-right> <c-w>>

" map Z to ~ to compensate for ~'s position in the new mac's keyboard
nnoremap Z ~



" disable the F1 help screen
"nmap <F1> <nop>
"nmap <c-l> !open [http://www.php.net/<cword> http://www.php.net/<cword>]


" with the cursor on foo it outputs:
" console.log('foo');
" console.log(foo);
nmap <c-c> V10<iconsole.log(jkA);jkyypkf(a'jkf)i'jk

" with the cursor on foo it outputs:
" error_log('foo');
" error_log(foo);
nmap <c-e>1 V10<ierror_log(jkA);jkyypkf(a'jkf)i'jk

" with the cursor on foo it outputs:
" error_log('foo');
" error_log(str_replace(array('\n', '\t'), ' ', foo));
nmap <c-e>2 V10<ierror_log(jkA);jkyypwastr_replace(array("\n", "\t"), ' ', jkea)jkkF(a'jkea'jk

" with the cursor on foo it outputs:
" error_log('foo');
" error_log(json_encode(foo, true));
nmap <c-e>3 V10<ierror_log(jkA);jkyypwajson_encode(jkf)i)jkkF(a'jkf)i'jk


nmap - $
nmap <Space> <PageDown>
nmap <BS> <PageUp>


" use double ESC to switch to Normal mode when in :term
tnoremap <ESC><ESC> <C-\><C-N>


nmap <c-b> :CtrlPBuffer<CR>


" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

set listchars=tab:▸\ ,eol:¬,space:.

"Invisible character colors 
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
highlight Space guifg=#4a4a59



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
set modelines=0                 " disable modeline parsing (vulnerability)
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
set tags=tags;/

" Auto-detect some files as HTML files
augroup filetypedetect
    au BufRead,BufNewFile *.blade set filetype=php
    au BufRead,BufNewFile *.twig  set filetype=php
    au BufRead,BufNewFile *.vue   set filetype=html
    au BufRead,BufNewFile *.vue   set filetype=html
augroup END


"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

" tell ctrl-p to ignore some directories 
let g:ctrlp_custom_ignore = '\v[\/](build|cache|dist|node_modules|target|vendor)|(\.(git|ico|idea|svn|swp))$'

