set nocompatible
set number
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" The bundles you install will be listed here

Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h16
set laststatus=2

Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdcommenter'
Bundle 'nanotech/jellybeans.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'lervag/vim-latex'
Bundle 'suan/vim-instant-markdown'

filetype plugin indent on

" The rest of your config follows here

"let mapleader = ","

" Spaces not tabs! 
set tabstop=4
set shiftwidth=4
set expandtab

" more subtle popup colors
" and transparency
if has ('gui_running')
    highlight Pmenu guibg=#cccccc gui=bold
    set transparency=5
endif

colors jellybeans

" Python-mode
" Activate rope
" Keys:
" K     Show python docs
"   Rope autocomplete
" g     Rope goto definition
" d     Rope show documentation
" f     Rope find occurrences
" b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[    Jump on previous class or function (normal, visual, operator modes)
" ]]    Jump on next class or function (normal, visual, operator modes)
" [M    Jump on previous class or method (normal, visual, operator modes)
" ]M    Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1

let g:pymode_rope_lookup_project = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

" Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = 'b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

" Set the following so the command-B keys work
let g:Tex_CompileRule_pdf='latexmk $*'

" UltiSnips setup:
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Move by screen lines
nnoremap j gj
nnoremap k gk

" Linebreak is nicer wrapping
set linebreak

" Latex Viewer
let g:LatexBox_viewer = "open -a Preview"

set wildmode=longest,list,full
set wildmenu
