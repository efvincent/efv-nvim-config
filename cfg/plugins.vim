"-------------------------------
" plugin management
"-------------------------------
if &compatible
  set nocompatible  " Be iMproved
endif

" the runtime path is where vim looks for things. Tell vim where dein is, then
" call dein to initialize the plugin system
exec 'set runtimepath+=' . stdpath('config') . '/dein/repos/github.com/Shougo/dein.vim'
call dein#begin(stdpath('config') . '/dein')

" Let dein manage itself
call dein#add(stdpath('config') . '/dein/repos/github.com/Shougo/dein.vim')

" My plugins
call dein#add('neoclide/coc.nvim')
call dein#add('luochen1990/rainbow')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('trusktr/seti.vim')

" Required by dein
call dein#end()
filetype plugin indent on
syntax enable

" have dein check for new plugins to install. Slows startup down a tiny bit
if dein#check_install()
  call dein#install()
endif


