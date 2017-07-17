set nocompatible
filetype off 

set rtp+=/home/hydrius/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Bundle 'scrooloose/nerdtree'
" Bundle 'tpope/vim-fugitive'
" Bundle 'klen/python-mode'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'tmhedberg/SimpylFold'

execute pathogen#infect()

syntax on
filetype plugin indent on

" Nerd Tree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=20


" Colour Scheme
colorscheme gruvbox
set background=dark

" Set vim settings
set mouse=n
set history=700

set autoread

set wildmenu

let mapleader=","
let g:mapleader=","
nmap <leader>w :w!<cr>
set ruler

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

set tabstop=4
set shiftwidth=4
set number
set nowrap
"+yy
"*yy
"

let python_highlight_all=1


set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>




"m Documentation
"let g:pymode_rope_lookup_project = 0
"let g:pymode_doc = 1
"let g:pymode_doc_key = 'K'
"
"Linting
"let g:pymode_lint = 1
"let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
" let g:pymode_lint_write = 1
"
" " Support virtualenv
"let g:pymode_virtualenv = 1

" Enable breakpoints plugin
"let g:pymode_breakpoint = 1
"let g:pymode_breakpoint_bind = '<leader>b'
"
" " syntax highlighting
" let g:pymode_syntax = 1
" let g:pymode_syntax_all = 1
" let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"  let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
" let g:pymode_folding = 0


"au BufNewFile,BufRead *.py
"    \ set tabstop=4 |
"    \ set softtabstop=4 |
"    \ set shiftwidth=4 |
"    \ set textwidth=79 |
"    \ set expandtab |
"    \ set autoindent |
"    \ set fileformat=unix |


augroup vimrc_autocmds
    autocmd!
	"highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black

	autocmd FileType python match Excess /\%120v.*/
	autocmd FileType python set nowrap
	augroup END

" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


call vundle#end()            " required
filetype plugin indent on    " required


