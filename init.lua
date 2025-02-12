-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local opt = vim.opt

opt.tabstop = 4
opt.shiftwidth = 4
opt.smartindent = true

vim.cmd([[:colorscheme rose-pine-moon]])
