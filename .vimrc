syntax on
colorscheme peachpuff
highlight Comment ctermfg=green
 
" run :verbose set tabstop? if tabstop problems
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line

set number
set hlsearch
set ruler
set ignorecase
set autoread

" set clipboard+=unnamedplus
" set clipboard^=unnamed

set nocompatible
set formatoptions+=j " Delete comment character when joining commented lines
set autoread  " autoload file changes ??
 
set hidden
set laststatus=0    " 0 for no bottom status line
set showcmd         " show command in bottom bar

"This unsets the last search pattern register by hitting return"
nnoremap <CR> :noh<CR><CR>

if has('nvim')
		tnoremap <Esc> <C-\><C-n>
    call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-fugitive'
    Plug 'mileszs/ack.vim'

    " Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    call plug#end()
endif

" Junk in normal mode input fix. Workaround some broken plugins which set guicursor indiscriminately.
set guicursor=
autocmd OptionSet guicursor noautocmd set guicursor=
" Disable cursor blink
set guicursor+=a:blinkon0
