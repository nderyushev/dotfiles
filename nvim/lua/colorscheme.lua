local present = pcall(require, "gruvbox")
if not present then
  return
end

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])
