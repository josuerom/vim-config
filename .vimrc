"*----------- Configuración [.vimrc] 31/Marzo/2022 11:29a.m COL -----------* 
" Creador >> Josué Romero
" Twitter >> https://twitter.com/josueromr


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
set laststatus=2
set tabstop=2
set hlsearch
set ignorecase
set splitbelow
set confirm

" seteo para COC
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=100
set shortmess+=c

"*------------ PLUGINS -------------*
call plug#begin('~/.vim/plugged/')

" resaltado de sintaxis
Plug 'sheerun/vim-polyglot'

" tema
Plug 'morhetz/gruvbox'

" barra de estado
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'itchyny/lightline.vim'

" barra lateral - iconos
Plug 'scrooloose/nerdtree'

" búsqueda - agrupador
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'

" navegación entre pestañas
Plug 'christoomey/vim-tmux-navigator'

" autocompletado - snippets
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'

" terminal flotante
Plug 'voldikss/vim-floaterm'

" IDE
Plug 'terryma/vim-multiple-cursors'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'

" git en nvim
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

call plug#end()

" ajustes del tema
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark="medium"
let no_buffers_menu=1
highlight Normal ctermbg=none
colorscheme gruvbox

"*------------ MAP OR SHORTCUTS -------------*
let mapleader = " "

" para el modo NORMAL desabilito el desplazamiento con las flechas
" para usar los carácteres <h, j, k & l>
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" salir del modo INSERT con <Esc> <Ctrl+c> o <k+j>
imap <C-c> <Esc>
imap kj <Esc>

" desplazamiento vertical rápido con (hacia abajo -> ctrl+e) (hacia arriba -> ctrl+y)
nnoremap <C-k> 35 <C-e>
nnoremap <C-j> 35 <C-y>

" coloca un punto y coma al final de la línea, con <space+,>
nnoremap <Leader>, $a;<Esc>

" ejecuta archivos .js & .ts con Nodejs
nnoremap <Leader>dd :!node %<CR>
" compila y ejecuta archivos .java
nnoremap <Leader>dj :!java %<CR>
" compila y ejecuta archivos .py
nnoremap <Leader>dp :!python %<CR>

" con <Ctrl+t> se abre la terminal
nmap <C-t> :call OpenTerminal()<CR> <Esc> :resize 13<CR>
nmap <Leader>t :split<CR> :terminal zsh<CR> :resize 13<CR>

" eliminar todos los espacios vacíos que hayan en el archivo con <F1>
nnoremap <F1> :%s/\s\+$//e<CR>
" reinicia neovim con <F2>
nmap <F2> :so %<CR>
" abre el archivo de configuración inicial con <F3>
nnoremap <F3> :e $MYVIMRC<CR>
" crear un archivo en una nueva pestaña, con <F4>
nnoremap <F4> :tabnew 

" presione <F5> en modo NORMAL, INSERT o TERMINAL para abrir una terminal flotante
" en el centro de la pantalla, y con <F8> matas todas las terminales que hayas abierto
nnoremap <silent> <F5> :FloatermNew<CR>
imap <F5> <Esc> :w<CR> :FloatermNew<CR>
tnoremap <silent> <F5> <C-\><C-n>:FloatermNew<CR>
nnoremap <silent> <F6> :FloatermNext<CR>
tnoremap <silent> <F6> <C-\><C-n>:FloatermNext<CR>
nnoremap <silent> <F7> :FloatermPrev<CR>
tnoremap <silent> <F7> <C-\><C-n>:FloatermPrev<CR>
nnoremap <silent> <F8> :FloatermKill<CR>
tnoremap <silent> <F8> <C-\><C-n>:FloatermKill<CR>

" copia la ruta general del archivo abierto con <F10>
nnoremap <F10>kp :let @*=expand("%")<CR>

" modo goyo sin distracciones
nmap <F11> :Goyo<CR>
imap <F11> <Esc> :Goyo<CR>

"para guardar el archivo <space+w>
nnoremap <Leader>w :w<CR>
" para cerrar algun búfer o pestaña <space+q>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>
" para salir rápidamente de nvim <space+x>
nnoremap <Leader>x :qa!<CR>

" abrir el árbol, side bar o NERDTree
nmap <Leader>e :NERDTreeToggle<CR>
nmap <Leader>p :Explore<CR>
nmap <Leader>f :FZF<CR>

" comentar líneas con <}+}>
vmap }} <plug>NERDCommenterToggle
nmap }} <plug>NERDCommenterToggle
imap }} <Esc> <plug>NERDCommenterToggle

" navegación rápida entre buffers abiertos
nnoremap <silent><C-h> :TmuxNavigateLeft<CR>
nnoremap <silent><C-j> :TmuxNavigateDown<CR>
nnoremap <silent><C-k> :TmuxNavigateUp<CR>
nnoremap <silent><C-l> :TmuxNavigateRight<CR>

" atajos para git
nnoremap <Leader>gg :G<CR>
nnoremap <Leader>gv :GV<CR>
nnoremap <Leader>gy :Git init<CR>
nnoremap <Leader>gs :Git status<CR>
nnoremap <Leader>ga :Git add -A<CR>
nnoremap <Leader>gc :Git commit -m "New change👨‍💻😎"<CR>
nnoremap <Leader>gcc :Git commit -m "Solution Bug 🪲"
nnoremap <Leader>grr :Git remote add origin https://github.com/username/name-repo.git
nnoremap <Leader>gpp :Git push -u origin master<CR>
nnoremap <Leader>go :Git log --oneline<CR>
nnoremap <Leader>gp :Git push<CR>
nnoremap <Leader>gb :Git branch<CR>
nnoremap <Leader>gf :Git fetch<CR>
nnoremap <Leader>gl :Git pull<CR>
nnoremap <Leader>gm :Git merge<CR>
nnoremap <Leader>ge :Git revert #commit

" flujo instantaneo con COC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" dividir pantalla en dos [vertical] con space+i
nnoremap <Leader>ii :vsplit<CR>
" dividir pantalla en dos [horizontal] con space+o
nnoremap <Leader>oo :split<CR>

" navegación entre pestañas abiertas con <spacer+l> y <space+h>
nnoremap <Leader>l :bnext<CR>
nnoremap <Leader>h :bprevious<CR>
nmap <Leader>dl :bdelete<CR>

" búsqueda por dos carácteres con easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" atajos para el gestor vim-plug
nnoremap <Leader>pi :PlugInstall<CR>
nnoremap <Leader>pc :PlugClean<CR>
nnoremap <Leader>pu :PlugUpdate<CR>
nnoremap <Leader>pp :PlugUpgrade<CR>

" indentar líneas y bloques en cualquier modo VISUAL
vnoremap < <gv
vnoremap > >gv

" para multiple cursor debe poner el cursor encima de una palabra y presionar
" <ctrl+n> para buscar las coincidencias en el archivo y luego presione <c>
" para cambiar su contenido

" para agrupar una cadena de texto con cualquier simbolo ya sea: () [] {} '' "" debes
" selecionar la palabra hasta un carácter antes y presionar: <s+el-simbolo-a-usar>
" por ejemplo: <s+[>
xmap s <Plug>VSurround

" mover bloques de código seleccionado en modo VISUAL, V-LINE o V-BLOCK con <K> subes el código y con <J> lo bajas
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" cambiar la posición de las líneas
nnoremap n :m .-2<CR>==
nnoremap m :m .+1<CR>==

" Para camiar el carácter que contenga una cadena de texto o cambiar el carácteres que los contiene,
" por ejemplo: si tienes un: 'Hi User Name' al presionar cs+el-simbolo-a-usar, la cadena de carácteres
" magicamente se cambiará sin necesidad de realizarlo manualmente.

" entrega de sugerencias automatica de COC
imap <silent><expr> <C-space> coc#refresh()

" con las feclas ajustas el tamaño de las pestañas
nnoremap <silent> <right> :vertical resize +2<CR>
nnoremap <silent> <left> :vertical resize -2<CR>
nnoremap <silent> <up> :vertical resize +2<CR>
nnoremap <silent> <down> :vertical resize -2<CR>

" administrar todos los snippets con <F12>
nnoremap <silent><nowait> <F12> :<C-u>CocList snippets<CR>
" actualizar extensiones
nnoremap <silent><nowait> <Leader>cuu :<C-u>CocUpdate<CR>
" desintalar extensiones
nnoremap <silent><nowait> <Leader>cii :<C-u>CocUninstall coc-

" Use <C-j> para saltar al siguiente marcador de posición
let g:coc_snippet_next = '<C-j>'
" Use <C-k> para saltar al marcador de posición anterior
let g:coc_snippet_prev = '<C-k>'

" Use <C-j> para saltar a los demás marcadores de posición
imap <C-j> <Plug>(coc-snippets-expand-jump)
" Use <space+y> para convertir el código visual seleccionado en un fragmento
xmap <Leader>y  <Plug>(coc-convert-snippet)

"*------------ PLUGINS CONFIG -------------*
" configuración de la barra de estado inferioir
let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch', 'cocstatus']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'kitestatus': 'kite#statusline',
      \   'cocstatus': 'coc#statusline'
      \ },
      \ 'colorscheme': 'gruvbox',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}

" si usted utiliza el autocompletado KITE descomente la sgt línea y agregue el
" lenguaje que desea.
"let g:kite_supported_languages = ['lenguaje']
let g:coc_global_extensions = ['coc-snippets', 'coc-tsserver', 'coc-java']

" configuración de ultisnips
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"

" cerrado automatico de la barra lateral o árbol
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'
" estable tus iconos para los directorios
"let g:NERDTreeDirArrowExpandable='+'
"let g:NERDTreeDirArrowCollapsible='~'

" navegación con tmux
let g:tmux_navigator_no_mappings=1

" ajustes para vim-fugitive
command! -bang -nargs=? -complete=dir GFiles
  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" configuración para la funcionalidad vim-floaterm
let g:floaterm_keymap_new = '<F5>'
let g:floaterm_keymap_next = '<F6>'
let g:floaterm_keymap_prev = '<F7>'
let g:floaterm_keymap_kill = '<F8>'

" Cursor up search in FZF(Line Fuzzy Finder)
let $FZF_DEFAULT_OPTS='--layout=reverse'

"*--------------------------- FUNCIÓN QUE INTEGRA LA TERMINAL DENTRO DE NVIM -------------------------------*
function! OpenTerminal()
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"

  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")

  if bufType == "terminal"
    " cerrar terminal existente
    execute "q"
  else
    " se abrirá la terminal cmd, pero si usted utiliza otra terminal, debes
    " poner el nombre del .exe o ejecutable ya sea: 'cmd, zsh, bash, iTerm', quedando la
    " línea (81) asíA: execute 'sp term://bash, alacrity, fish'
    execute "sp term://zsh"
    " apagar números
    execute "set nonu"
    execute "set nornu"

    " alternar insertar en entrar o salir
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    " establezco atajos dentro de la terminal
    execute "tnoremap <buffer> <Esc> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-7> <C-\\><C-\\><C-n>"
    startinsert!
  endif
endfunction

"*---------------------- SOLUCIÓN A EL ERROR DE COC-SNIPPETS -----------------------*
" Si al iniciar neovim te aparece siempre este molestoso error:
" [coc.nvim] Error on execute :pyx command, ultisnips feature of coc-snippets requires pyx support on vim. use :CocOpenLog for details
" ejecuta el sgt comando en tu terminal como super usuario: pip install pynvim
" así no deberá aparecerte más.

"*---------------------- CONFIGURACIÓN SENCILLA DE COC, LA DEJO EN INGLES ---_----------------------*
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.6.1") || has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif

inoremap <silent><expr> <TAB>
    \ pumvisible() ? coc#_select_confirm() :
    \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
let g:coc_snippet_next = '<TAB>'

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
