"Add $HOME/.vim and $HOME/.vim/after to &rtp on Windows
"From: http://stackoverflow.com/a/10622083
let g:my_vim_dir=expand("$HOME/.vim")
if has("win16") || has("win32") || has("win64")
	execute "set rtp^=".g:my_vim_dir
	execute "set rtp+=".g:my_vim_dir."\\after"

	if &shell=~#'bash$'
		set shell=$COMSPEC " sets shell to correct path for cmd.exe
	endif

	source $VIMRUNTIME/mswin.vim
	set guifont=Consolas:h10
endif

set nocompatible
execute pathogen#infect()

set autoindent
set smartindent
set visualbell
set tabstop=4
set shiftwidth=4
set showcmd
set showmatch
set ruler
set backspace=2
set backspace=indent,eol,start

syntax enable
set background=dark
colorscheme solarized

set hlsearch
