local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.opt.fillchars:append({ eob = " " })
vim.opt.number = true
vim.opt.relativenumber = true

vim.keymap.set('n','y','"+y')
vim.keymap.set('n','yy','"+yy')
vim.keymap.set('n','Y','"+Y')
vim.keymap.set('x','y','"+y')
vim.keymap.set('x','Y','"+Y')
require("vim-options")
require("lazy").setup("plugins")



vim.diagnostic.config({
  virtual_text = true,  -- muestra texto del error inline
  signs = true,         -- muestra iconos en el margen
  underline = true,     -- subraya el texto con errores
  update_in_insert = false,
  severity_sort = true,
})
