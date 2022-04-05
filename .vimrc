"*----------- Configuración [.vimrc] 29/Marzo/2022 11:29a.m COL -----------*
 
							"██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
							"██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
							"██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
							"██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
							"██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║ 
							"╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
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
set showcmd
set ruler
set termencoding=utf-8
set sw=2
set termguicolors
set showmatch
set noshowmode
set nowrap
set cursorline
set splitbelow
set laststatus=2
set autochdir
set autoindent
set confirm
set scrolloff=1
set tabstop=3
set hlsearch
set ignorecase
set timeoutlen=200

" COC
set encoding=utf-8
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=100
set shortmess+=c
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" configuración del tema
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"
highlight Normal ctermbg=none
