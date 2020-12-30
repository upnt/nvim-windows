inoremap jj <ESC>
nnoremap <silent><ESC><ESC> :nohlsearch<CR>
let mapleader="\<Space>"

let g:python_host_prog='C:\Users\shun-\anaconda3\envs\pynvim2\python.exe'
let g:python3_host_prog='C:\Users\shun-\anaconda3\envs\pynvim3\python.exe'
set number
set relativenumber
set expandtab
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8,utf-16le
set foldlevel=2

let g:netrw_liststyle=1
let g:netrw_banner=0
let g:netrw_sizestyle="H"
let g:netrw_timefmt="%Y/%m/%d(%a) %H:%M:%S"
let g:netrw_preview=1

"dein Scripts-----------------------------
if &compatible
    set nocompatible               " Be iMproved
endif


" Required:
set runtimepath+=$HOME\.cache\dein\repos\github.com\Shougo\dein.vim
let s:dir_path = stdpath('config')

" Required:
if dein#load_state($HOME . '\.cache\dein')
    call dein#begin($HOME . '\.cache\dein')
    " Let dein manage dein
    " Required:
    call dein#add('Shougo\dein.vim')
    call dein#add('wsdjeg\dein-ui.vim')
    call dein#load_toml(s:dir_path . '\system.toml')
    call dein#load_toml(s:dir_path . '\file.toml')
    call dein#load_toml(s:dir_path . '\view.toml')
    call dein#load_toml(s:dir_path . '\support.toml')
    
    " Required:
    call dein#end()
    call dein#save_state()
endif

" Required:
"
filetype plugin indent on
syntax on

if !argc() || (argc() == 1) && isdirectory(argv(0))
    colorscheme molokai
    let g:lightline.colorscheme = 'wombat'
else
    let g:pencil_neutral_code_bg = 1
    set background=light
    colorscheme pencil
    let g:lightline.colorscheme = 'selenized_light'
endif
