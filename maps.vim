" Setea ESPACIO como la tecla lider para todos los demás comandos
nnoremap <SPACE> <Nop>
let mapleader=" "


" jf -> esc
inoremap jf <Esc>

" ******** copiar al portapapeles la dirección actual del archivo
nmap <leader>p <Nop>
nmap <leader>pp :let @+ = expand("%")<cr>

" ******** actualiza la configuración actual de nvim
nmap <leader>c <Nop>
nmap <leader>cc :so ~/.config/nvim/init.vim<cr>

" ******** abrir archivo de configuración
nmap <leader>cco :edit $MYVIMRC<cr>

" ******** abrir nerdtree en el archivo actual
nmap <leader>n <Nop>
nmap <leader>nn :NERDTreeFind<cr>
nmap <leader>nc :NERDTreeClose<cr>

" Guardar el archivo
"nmap <leader>w <Nop>
"nmap <leader>ww :w<cr>

" siguiente tab
nmap <leader>j <Nop>
nmap <leader>jj gt

" tab anterior
nmap <leader>f <Nop>
nmap <leader>ff <Nop>
nmap <leader>ff :tabprevious<cr>

" Salir del modo terminal
" tnoremap <Esc><Esc> <C-\><C-n>
tnoremap ;/ <C-\><C-n>

" Mostar blame de la línea
nnoremap <leader>bb :Git blame<CR>
nnoremap <leader>bc :close<CR>

" Cerrar QuickFixList
nnoremap <leader>cl :cclose<CR>

" Abrir QuickFixList
nnoremap <leader>co :copen<CR>

" Siguiente elemento en Clist
nnoremap <leader>cj :cnext<CR>


" anterior elemento en Clist
nnoremap <leader>cf :cprev<CR>

" wrap
nnoremap <leader>ww :set wrap<CR>

" nowrap
nnoremap <leader>nw :set nowrap<CR>

" folding
" nnoremap s za

" ultisnips
nnoremap <leader>u <Nop>
nnoremap <leader>u <CR>

" abrir nueva terminal
nnoremap <leader>tt <Nop>
nnoremap <leader>tt :tab new <bar> term <CR>

" tab split
nnoremap <leader>ts <Nop>
nnoremap <leader>ts :tab split <CR>

" tab new
nnoremap <leader>tn <Nop>
nnoremap <leader>tn :tab new <CR>

" Telescope
nmap <leader>df <Nop>
nnoremap <leader>df <cmd>Telescope find_files hidden=true<cr>

" Taboo, renonmbrar tab
nnoremap <leader>rr :TabooRename<space>

" Ack seach
" - si no ingreso nada, busca la palabra en la que esté el cursor
" - si ingreso texto buscará eso
nmap <leader>fi <Nop>
nmap <leader>fi :Ack<space>


" Restart COC
nmap qq :CocRestart<CR>

" Ejecutar black
" necesita pip install black
nmap <leader>bl :!{black %:p} <CR>

command! -nargs=* Search call InputAwareAckSearch(<q-args>)
nnoremap <Leader>fi :Search<space>

function! InputAwareAckSearch(args)
    if len(a:args) > 0
        " Executes ack by wrapping user input with quotes
        execute ":Ack! '".a:args."'"
    else
        " For no input, executes empty ack, so that word under cursor is searched
        execute ":Ack!"
    endif
endfunction

" ====ZIG===
nnoremap <leader>zr :!zig run %<CR>
nnoremap <leader>zt :!zig test %<CR>

" === comunes para recordar ===
" control + e -> scroll hacia abajo
" control + y -> scroll hacia arriba
" control + f -> un bloque hacia abajo
" control + b -> un bloque hacia arriba
