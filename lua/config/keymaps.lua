-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }


--Modes
--normal_mode 'n'
--insert_mode 'i'
--visual_block_mode 'x'
--term_mode 't'
--command_mode 'c'

-- Delete a word backward
keymap.set('n','dw','vb"_d')

-- Exit  insert mode
keymap.set('i','jj','<Esc>')

-- Split window
keymap.set('n','ss',':split<Return><C-w>w')
keymap.set('n','sv',':vsplit<Return><C-w>w')

-- Select all
keymap.set('n','<C-a>','gg<S-v>G',opts)

-- Move window
keymap.set('','sh','<C-w>h',opts)
keymap.set('','sj','<C-w>j',opts)
keymap.set('','sk','<C-w>k',opts)
keymap.set('','sl','<C-w>l',opts)

--Visual
keymap.set('v','<','<gt',opts)
keymap.set('v','>','>gt',opts)

--Select end of line on visual mode
keymap.set('v','v','<Esc>',opts)

--Move text up and down
keymap.set('v','<A-j>',':m .+1<CR>==',opts)
keymap.set('v','<A-k>',':m .-2<CR>==',opts)
keymap.set('v','p','"_dp',opts)



