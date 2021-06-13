" General Settings
" ------------------------------------------
" useful for colors: https://vi.stackexchange.com/questions/23328/change-color-of-coc-suggestion-box
"                    https://stackoverflow.com/questions/64180454/how-to-change-coc-nvim-floating-window-colors
set number relativenumber
set nowrap
set noshowmode
set tw=80
set encoding=UTF-8
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set iskeyword+=-                      	" treat dash separated words as a word text object
set smartcase
set smarttab
set smartindent
set autoindent
set softtabstop=2
set shiftwidth=2
set expandtab
set incsearch
set mouse=a
set history=1000
set cmdheight=2
set hidden
set background=dark
set cursorline
set nobackup
set nowritebackup
set shortmess+=c
set formatoptions-=cro                  " Stop newline continution of comments
set completeopt=menuone,menu,longest
set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set listchars=tab:>~,nbsp:_,trail:.
set list
set t_Co=256
set nohlsearch

" open a terminal in the directory of the current file
" TODO - doesn't seem to work, opened to where the explorer
" was already opened
map <F6> :let $VIM_DIR=expand('%:p:h')<CR>:terminal<CR>cd $VIM_DIR<CR>

" easier tab switching <M- is the option/alt key
nnoremap <M-Left> :tabprevious<CR>
nnoremap <M-Right> :tabnext<CR>

" Set Markdown files to wrap
augroup Markdown
  autocmd!
  autocmd FileType markdown set wrap
augroup END

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
