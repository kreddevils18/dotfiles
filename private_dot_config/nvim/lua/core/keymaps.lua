-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

-------------
-- general keymaps
-------------

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")

-------------
-- plugin keybinds
-------------

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fx', builtin.treesitter, {})

-- barbar
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>,', '<Cmd>BufferPrevious<CR>', opts)
vim.keymap.set('n', '<leader>.', '<Cmd>BufferNext<CR>', opts)
vim.keymap.set('n', '<leader><', '<Cmd>BufferMovePrevious<CR>', opts)
vim.keymap.set('n', '<leader>>', '<Cmd>BufferMoveNext<CR>', opts)
vim.keymap.set('n', '<leader>1', '<Cmd>BufferGoto 1<CR>', opts)
vim.keymap.set('n', '<leader>2', '<Cmd>BufferGoto 2<CR>', opts)
vim.keymap.set('n', '<leader>3', '<Cmd>BufferGoto 3<CR>', opts)
vim.keymap.set('n', '<leader>4', '<Cmd>BufferGoto 4<CR>', opts)
vim.keymap.set('n', '<leader>5', '<Cmd>BufferGoto 5<CR>', opts)
vim.keymap.set('n', '<leader>6', '<Cmd>BufferGoto 6<CR>', opts)
vim.keymap.set('n', '<leader>7', '<Cmd>BufferGoto 7<CR>', opts)
vim.keymap.set('n', '<leader>8', '<Cmd>BufferGoto 8<CR>', opts)
vim.keymap.set('n', '<leader>9', '<Cmd>BufferGoto 9<CR>', opts)
vim.keymap.set('n', '<leader>0', '<Cmd>BufferLast<CR>', opts)
vim.keymap.set('n', '<leader>p', '<Cmd>BufferPin<CR>', opts)
vim.keymap.set('n', '<leader>c', '<Cmd>BufferClose<CR>', opts)
vim.keymap.set('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
vim.keymap.set('n', '<leader>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
vim.keymap.set('n', '<leader>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
vim.keymap.set('n', '<leader>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
vim.keymap.set('n', '<leader>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)
