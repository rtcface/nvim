-- Aliases API nvim

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local cmd = vim.cmd

map( '', '<up>', '<nop>', { noremap = true } )
map( '', '<down>', '<nop>', { noremap = true } )
map( '', '<left>', '<nop>', { noremap = true } )
map( '', '<right>', '<nop>', { noremap = true } )


map( 'i', '<C-h>', '<left>', default_opts )
map( 'i', '<C-j>', '<down>', default_opts )
map( 'i', '<C-k>', '<up>', default_opts )
map( 'i', '<C-l>', '<right>', default_opts )

map('n', '<Leader>n', ':Neotree toggle<CR>', default_opts)       -- open/close

-- normal mode (easymotion-like)
map("n", "<Leader><Leader>b", "<cmd>HopWordBC<CR>", {noremap=true})
map("n", "<Leader><Leader>w", "<cmd>HopWordAC<CR>", {noremap=true})
map("n", "<Leader><Leader>j", "<cmd>HopLineAC<CR>", {noremap=true})
map("n", "<Leader><Leader>k", "<cmd>HopLineBC<CR>", {noremap=true})

-- visual mode (easymotion-like)
map("v", "<Leader><Leader>w", "<cmd>HopWordAC<CR>", {noremap=true})
map("v", "<Leader><Leader>b", "<cmd>HopWordBC<CR>", {noremap=true})
map("v", "<Leader><Leader>j", "<cmd>HopLineAC<CR>", {noremap=true})
map("v", "<Leader><Leader>k", "<cmd>HopLineBC<CR>", {noremap=true})


-- normal mode (sneak-like)
map("n", "s", "<cmd>HopChar2AC<CR>", {noremap=false})
map("n", "S", "<cmd>HopChar2BC<CR>", {noremap=false})

-- visual mode (sneak-like)
map("v", "s", "<cmd>HopChar2AC<CR>", {noremap=false})
map("v", "S", "<cmd>HopChar2BC<CR>", {noremap=false})
