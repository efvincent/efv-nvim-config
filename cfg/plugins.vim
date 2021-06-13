"-------------------------------
" plugin management
"-------------------------------
if &compatible
  set nocompatible  " Be iMproved
endif

set runtimepath+=/Users/eric.vincent/.config/nvim/dein/repos/github.com/Shougo/dein.vim
call dein#begin('/Users/eric.vincent/.config/nvim/dein')

" Let dein manage dein
call dein#add('/Users/eric.vincent/.config/nvim/dein/repos/github.com/Shougo/dein.vim')

call dein#add('neoclide/coc.nvim')
call dein#add('luochen1990/rainbow')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('trusktr/seti.vim')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif


