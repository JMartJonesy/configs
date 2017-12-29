"""""""""""""""""""""""""""""
"     dein configuration    "
"""""""""""""""""""""""""""""
if &compatible
	set nocompatible	" Be iMproved
endif

set runtimepath+=/home/JMartJonesy/.dein/./repos/github.com/Shougo/dein.vim

if dein#load_state('/home/JMartJonesy/.dein/.')
	call dein#begin('/home/JMartJonesy/.dein/.')

	" Let dein manage dein
	call dein#add('/home/JMartJonesy/.dein/./repos/github.com/Shougo/dein.vim')

	"Plugins here
	call dein#add('morhetz/gruvbox')
	call dein#add('scrooloose/nerdtree')
	call dein#add('vim-airline/vim-airline')

	call dein#end()
	call dein#save_state()
endif

filetype plugin indent on
syntax enable

"Install not installed plugins on startup
if dein#check_install()
	call dein#install()
endif

"""""""""""""""""""""""""""""
"    neovim configuration   "
"""""""""""""""""""""""""""""
" Theme
colorscheme gruvbox
set background=dark
highlight Normal ctermbg=0

set number " Number lines
set laststatus=2 " Always show status
set cursorline " Highlight current line
