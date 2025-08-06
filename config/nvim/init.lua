-- $XDG_CONFIG_DIR/nvim/init.lua

-- Set up before plugins
vim.g.mapleader = " "

-- Plugins

vim.pack.add{
    { src = "https://gitlab.com/HiPhish/resolarized.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
    { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
    { src = "https://github.com/echasnovski/mini.nvim" },
    { src = "https://github.com/rafamadriz/friendly-snippets" },
    { src = "https://github.com/brianhuster/unnest.nvim" },
}

-- LSP
require("mason").setup()
require("mason-lspconfig").setup()
require("mason-tool-installer").setup({
    ensure_installed = {
        "css-lsp",
        "rust-analyzer",
        "gopls",
        "cmake-language-server",
        "marksman",
        "systemd-language-server",
        "termux-language-server",
        "bash-language-server",
        "taplo",
        "yaml-language-server",
        "html-lsp",
        "docker-language-server",
        "biome",
        "clangd",
        "lua-language-server",
        "pyright",
    }
})
require("nvim-treesitter").setup()

-- mini.nvim
require("mini.icons").setup()
require("mini.notify").setup()
require("mini.snippets").setup()
require("mini.completion").setup()
require("mini.surround").setup()
require("mini.comment").setup()
require("mini.bracketed").setup()
require("mini.files").setup()
require("mini.jump").setup()
require("mini.trailspace").setup()
require("mini.statusline").setup()

--- mini.clue
local miniclue = require('mini.clue')
miniclue.setup({
    triggers = {
        -- Leader triggers
        { mode = "n", keys = "<Leader>" },
        { mode = "x", keys = "<Leader>" },

        -- Built-in completion
        { mode = "i", keys = "<C-x>" },

        -- `g` key
        { mode = "n", keys = "g" },
        { mode = "x", keys = "g" },

        -- Marks
        { mode = "n", keys = "'" },
        { mode = "n", keys = "`" },
        { mode = "x", keys = "'" },
        { mode = "x", keys = "`" },

        -- Registers
        { mode = "n", keys = '"' },
        { mode = "x", keys = '"' },
        { mode = "i", keys = "<C-r>" },
        { mode = "c", keys = "<C-r>" },

        -- Window commands
        { mode = "n", keys = "<C-w>" },

        -- `z` key
        { mode = "n", keys = "z" },
        { mode = "x", keys = "z" },
    },

    clues = {
        -- Add descriptions for <Leader> mapping groups
        { mode = "n", keys = "<Leader>b", desc = "+Buffers" },

        -- Enhance this by adding descriptions for <Leader> mapping groups
        miniclue.gen_clues.builtin_completion(),
        miniclue.gen_clues.g(),
        miniclue.gen_clues.marks(),
        miniclue.gen_clues.registers(),
        miniclue.gen_clues.windows(),
        miniclue.gen_clues.z(),
    },

    window = {
        -- Floating window config
        config = {
            width = "auto",
        },

        -- Delay before showing clue window
        delay = 100,

        -- Keys to scroll inside the clue window
        scroll_down = '<C-d>',
        scroll_up = '<C-u>',
    },
})

-- Options

vim.cmd.syntax("on")

-- Load indentation rules and plugins according to the detected filetype
vim.cmd.filetype({"plugin", "indent", "on"})

vim.opt.number = true
vim.opt.showcmd = true
vim.opt.scrolloff = 1

vim.opt.showmatch = true
vim.opt.incsearch = true
vim.opt.hlsearch = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.encoding = "UTF-8"

--- Themeing

local TERM = os.getenv("TERM"):lower() .. os.getenv("COLORTERM"):lower()

vim.opt.background = "light"
if TERM:find("truecolor") or TERM:find("24bit") then
    vim.cmd [[set t_Co=256]]
elseif TERM:find("256") then
    vim.cmd [[set t_Co=256]]
    vim.g.solarized_termcolors = 256
elseif TERM:find("linux") then
    vim.opt.background = "dark"
end

vim.cmd [[silent! colorscheme solarized]]
vim.opt.colorcolumn = "80"

-- Bindings

-- Toggle mini.files on <Leader>n
vim.keymap.set("n", "<Leader>n", function() if not MiniFiles.close() then MiniFiles.open() end end)
