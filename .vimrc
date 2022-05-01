set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'NLKNguyen/papercolor-theme'

"Plugin 'joshdick/onedark.vim'

" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


let mapleader=" "
set clipboard+=unnamedplus
syntax on
"Mostrar lineas con numeros
set number

"Para mostrar siempre la barra de estado
set laststatus=2


set statusline=
set statusline+=%#PmenuSel#
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\



set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 
"Tema usado PaperColor dark https://github.com/NLKNguyen/papercolor-theme
set t_Co=256  
set background=dark
colorscheme PaperColor

"Mostrar estadisticas de archivo
set ruler

" Codificación
set encoding=utf-8

