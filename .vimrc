"*----------- Configuración [.vimrc] 31/Marzo/2022 11:29a.m COL -----------* 
" Configurado por >> Josué Romero
" Twitter >> https://twitter.com/josueromr

" Importo los archivos de configuración
so ~/config-vim/.vim/plugins-config.vim
so ~/config-vim/.vim/plugins.vim
so ~/config-vim/.vim/maps.vim

filetype plugin indent on
syntax enable
set number
set mouse=a
set numberwidth=1
set relativenumber
set clipboard=unnamedplus
set background=dark
set showcmd
set ruler
set sw=2
set termguicolors
set showmatch
set noshowmode
set nowrap
set cursorline
set laststatus=2
set tabstop=2
set hlsearch
set ignorecase
set splitbelow
set confirm
set diffopt+=vertical

" COC
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=100
set shortmess+=c

" ajustes para el tema gruvbox
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark="medium"
let no_buffers_menu=1
highlight Normal ctermbg=none
colorscheme gruvbox
