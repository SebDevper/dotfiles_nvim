call plug#begin()
    " ===utilidades===
    Plug 'preservim/nerdtree'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'mileszs/ack.vim'
    Plug 'fisadev/vim-isort'
    Plug 'gcmt/taboo.vim'
    Plug 'skywind3000/vim-quickui'

    " ===Linea para tabs===
    Plug 'lukas-reineke/indent-blankline.nvim'

    " ===Snippets===
    " Plug 'SirVer/ultisnips'

    " ===Telescope===
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

    " ===Fugitive===
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'

    " ===Temas===
    Plug 'morhetz/gruvbox'
    Plug 'sainnhe/everforest'

    "===Fondo transparente===
    "Plug 'tribela/vim-transparent'

    " ===Completion===
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    "===Vue===
    Plug 'posva/vim-vue'

    "===React===
    "Javascript
    Plug 'pangloss/vim-javascript' 
    "Typescript
    Plug 'leafgarland/typescript-vim'
    "JSX
    Plug 'maxmellon/vim-jsx-pretty'
    "TSX
    Plug 'peitalin/vim-jsx-typescript'
    "Estilos en componentes"
    Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

    "===ZIG===
    Plug 'ziglang/zig.vim'

call plug#end()
