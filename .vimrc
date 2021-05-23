"Add $HOME/.vim and $HOME/.vim/after to &rtp on Windows
"Based on:
"https://stackoverflow.com/a/10622083
"https://stackoverflow.com/a/43245241
"https://superuser.com/a/1466466
if has("win16") || has("win32") || has("win64")
	set runtimepath-=$HOME/vimfiles
	set runtimepath^=$HOME/.vim
	set runtimepath-=$HOME/vimfiles/after
	set runtimepath+=$HOME/.vim/after

	set packpath-=$HOME/vimfiles
	set packpath^=$HOME/.vim
	set packpath-=$HOME/vimfiles/after
	set packpath+=$HOME/.vim/after

	if &shell=~#'bash$'
		set shell=$COMSPEC " sets shell to correct path for cmd.exe
	endif

	source $VIMRUNTIME/mswin.vim
	set guifont=Consolas:h10
endif

set nocompatible

set autoindent
set smartindent
set visualbell
set tabstop=4
set shiftwidth=4
set showcmd
set showmatch
set ruler
set backspace=indent,eol,start
set directory=.,$TEMP

syntax enable
set background=dark
colorscheme solarized8_flat

set hlsearch
