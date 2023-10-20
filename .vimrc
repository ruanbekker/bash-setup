" resources:
" https://superuser.com/a/632661

" enable filetype detection:
filetype on
filetype plugin on
filetype indent on

" configure syntax and theme
syntax on
colorscheme molokai

" disable paste visual mode
set mouse-=a

" recognize .txt extension as being human-language text
augroup filetype
  autocmd BufNewFile,BufRead *.txt set filetype=human
augroup END

" set indentation to 2 spaces
autocmd FileType lua,nginx,sh set shiftwidth=2 softtabstop=2

" set indentation to 4 spaces
autocmd FileType html,xhtml,css,xml,xslt,python set shiftwidth=4 softtabstop=4

" in makefiles, don't expand tabs to spaces
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

" vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
call plug#end()

" old configs
"set expandtab           " enter spaces when tab is pressed
"set tabstop=4           " use 4 spaces to represent tab
"set softtabstop=4
"set shiftwidth=4        " number of spaces to use for auto indent
"set autoindent          " copy indent from current line when starting a new line
"set smartindent
"set smarttab
"set expandtab
