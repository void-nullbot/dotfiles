syntax on
colorscheme antares
let g:molokai_original = 1
let g:rehsh256 = 1
set background=dark
set t_Co=256 
set nobackup
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=iso-2022,euc-jp,utf-8,cp932,sjis
set number
set incsearch
set wrapscan
set showmatch
set showmode
set title
set ruler
set tabstop=4


let s:dein_dir = fnamemodify('~/.vim/bundle', ':p')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if &runtimepath !~# '/dein.vim'
    execute 'set runtimepath^=' . s:dein_repo_dir
endif

if dein#load_state('~/.vim/bundle')
  call dein#begin(s:dein_dir)
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/vimshell')
  call dein#add('Shougo/vimproc')
  call dein#add('Townk/vim-autoclose') 
  call dein#add('fatih/vim-go') 

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
	call dein#install()
endif
