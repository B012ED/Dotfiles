-- ==============================
--  Neovim Minimal Setup (yusa)
-- ==============================

-- --- GENERAL SETTINGS ---
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.showmode = true
vim.opt.showcmd = true
vim.opt.ruler = true
vim.opt.laststatus = 2
vim.opt.termguicolors = true
vim.opt.encoding = "utf-8"
vim.opt.scrolloff = 4
vim.opt.signcolumn = "yes"

-- --- KEYMAPS ---
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- --- PLUGIN MANAGER (lazy.nvim) ---
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "navarasu/onedark.nvim" },
})

-- --- THEME ---
require("onedark").setup {
  style = "cool", -- alternatif: dark, warmer, deep, cool
}
require("onedark").load()

-- --- STATUSLINE ---
require("lualine").setup {
  options = {
    theme = "onedark",
    section_separators = "",
    component_separators = "",
  },
}

-- --- FINAL TOUCH ---
vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")
