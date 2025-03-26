-- numeros activados
vim.opt.number = true

-- numeros relativos
vim.opt.relativenumber = true

-- nuevas ventanas siempre hacia abajo
vim.opt.splitbelow = true

-- al hacer vsplit siempre hacia al lado
vim.opt.splitright = true

-- no wrap
vim.opt.wrap = false

-- solo espacios y no tabs
vim.opt.expandtab = true

-- cantiadad de espacios que equivale un tab
vim.opt.tabstop = 4

-- indentacion automatica tambien con 4
vim.opt.shiftwidth = 4

-- clipboard
-- El nombre de este clipboard es el que usa internamente vim para conectarse al del sistema operativo
vim.opt.clipboard = "unnamedplus"

-- el mover el cursor scrollea el documento mientras este en el centro
-- vim.opt.scrolloff = 999

-- virtual edit solo para el visual block
vim.opt.virtualedit = "block"

-- spit cuando hagamos cambios globales en el archivo
vim.opt.inccommand = "split"

-- ignorar cases en todo vim
-- ojo que esto tambien afecta la busqueda y reemplazo
vim.opt.ignorecase = true

-- cambiar los colores que tiene permitido usar en la terminal
vim.opt.termguicolors = true

