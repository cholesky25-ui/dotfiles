require("config.lazy")

-- lsp

--vim.lsp.config["*"] = {
--  capabilities = require("blink.cmp").get_lsp_capabilities()
--}
-- En tu init.lua (Antes de activar tus servidores LSP)
vim.lsp.config("*", {
  capabilities = require("blink.cmp").get_lsp_capabilities()
})

vim.lsp.enable('clangd')
vim.lsp.enable('pyright')
vim.lsp.enable('texlab')

-- nvim configuratios
vim.opt.showmode = true
vim.opt.showcmd = true
vim.opt.wrap = true
vim.opt.smoothscroll = true
vim.opt.title = true

vim.opt.number = true
vim.o.relativenumber = false -- set relative number 
vim.opt.cursorline = true

vim.o.winborder = "rounded"
--vim.opt.clipboard = "unnamedplus"
vim.opt.tabstop = 2      -- Número de espacios que cuenta un <Tab> en la pantalla
vim.opt.smarttab = true
vim.opt.cindent = true
--vim.opt.autoindent = false

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2   -- Tamaño de la sangría al usar comandos como >> o <<
vim.opt.softtabstop = 2  -- Número de espacios que se insertan al presionar <Tab>
vim.opt.expandtab = true -- Convierte los tabuladores en espacios reales

vim.opt.termguicolors = true




-- keymaps
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)

require("config.custom").line_number_colors()

