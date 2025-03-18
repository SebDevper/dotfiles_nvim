" compartir el clipboard con otras aplicaciones
set clipboard=unnamedplus
" mostrar número de línea
set number
" número de línea relativo
set relativenumber

" mostar número de línea y la columna en la barra de estado
set ruler

" número de línea normal
" set nornu

" highlight la línea actual
set cursorline
" que el autocompletado se comporte más como un ide
set completeopt=noinsert,menuone,noselect
" hide bufers que no se ocupan
set hidden
" muestra lo que se reemplace en una ventana split
set inccommand=split
" permite usar el mouse en el editor
set mouse=a
" cambia el comportamiento de splitbelow a splitright
" :split -> split debajo
" :vsplit -> split al lado
set splitbelow splitright
" mostrar el título del archivo
set title
" el tiempo de los comandos en milisegundos
set ttimeoutlen=0
" un mejor menú de autocompletado
set wildmenu
" tab a espacios
set expandtab
" número de espacios de indentacion
set shiftwidth=2
" número de espacios para tab
set tabstop=2

" mostar nomnbre y ruta relativa del archivo
set statusline =\ %{resolve(expand('%'))}\ %*
set statusline +=\ %l\:%c

" automáticamente validar sintax al abrir los archivos
filetype plugin indent on
syntax on
" permitir 256 colores en la terminal
set t_Co=256

" linea vertical a los 100 caracteres
set colorcolumn=100
" Setear que siempre vea los archivos en UTF8
set encoding=utf-8

" si la terminal permite los colores, los agrega
if $TERM !=? 'xterm-256color'
  set termguicolors
endif

" folding
set foldmethod=indent 
" al abrir el archivo esté sin foliding
set foldlevel=99

" que las líneas simplemente se extiendan a la derecha
"set nowrap
set wrap
