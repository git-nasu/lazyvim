-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local autocmd = vim.api.nvim_create_autocmd --Create autocommand

--Remove whitespace on save
autocmd('BufWritePre', {
	pattern = '*',
	command = ':%s/\\s\\+$//e'
})

--Don't auto commenting on save

autocmd('BufEnter', {
	pattern = '*',
	command = 'set fo-=c fo-=r fo-=o' -- fo='formationoptions'
})

