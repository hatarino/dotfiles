-- Enable TrueColor support.
vim.o.termguicolors = true

-- Key mappings.
-- You may need to install clipboard provider like xclip or wl-clipboard.
vim.keymap.set('n', 'gy', '"+y')
vim.keymap.set('v', 'gy', '"+y')
vim.keymap.set('x', 'gy', '"+y')
