syntax on

set number relativenumber

set clipboard=unnamed

set shiftwidth=3
set tabstop=3
set softtabstop=3

"" set guifont=Monospace:h20

call plug#begin('~/.vim/plugged')

" Plugin outside ~/.vim/plugged with post-update hook

	Plug 'kien/ctrlp.vim'
	Plug 'raimondi/delimitmate'
	Plug 'tpope/vim-surround'
	Plug 'ervandew/supertab'
	Plug 'linkinpark342/xonsh-vim'
	Plug 'tpope/vim-commentary'
	Plug 'Vimjas/vim-python-pep8-indent'
	Plug 'leafgarland/typescript-vim'
	Plug 'vim-scripts/groovy.vim'

" Initialize plugin system
call plug#end()

au BufRead,BufNewFile .xonshrc set filetype=python
au BufRead,BufNewFile *.xsh set filetype=python
au BufRead,BufNewFile Jenkinsfile* set filetype=groovy
