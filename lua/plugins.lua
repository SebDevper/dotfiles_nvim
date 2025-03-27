-- instalar lazy vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath, })
end
vim.opt.rtp:prepend(lazypath)

-- instalar plugins
-- busca en /Users/abner/.local/share/nvim/lazy/lazy.nvim/lua/lazy/init.lua
require("lazy").setup({
    -- set de color
    {
        "rebelot/kanagawa.nvim",
        config = function()
            -- este codigo no se ejecutara hasta que la instalacion del plugin termine, es un callback
            vim.cmd.colorscheme("kanagawa-dragon")
        end,
    },
    -- treesitter y parsers
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-treesitter.configs").setup({
                -- parsers que se asegurara que esten instalados
                ensure_installed = {"c", "lua", "luadoc", "vim", "vimdoc", "query", "python"},
                -- los instalara automaticamente si no estan
                auto_install = true,
                -- se habilitara highlight automaticamente
                highlight = {
                    enable = true,
                }
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
    },
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {"mason.nvim"},
        config = function()
            require("mason-lspconfig").setup()
            -- va a hacer setup automatico de todos los servidores instalados con mason
            require("mason-lspconfig").setup_handlers({
                function(server_name)
                    require("lspconfig")[server_name].setup({})
                end,
            })
        end,
    }
})
