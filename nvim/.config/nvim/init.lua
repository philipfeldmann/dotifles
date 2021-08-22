vim.g.mapleader = " "
vim.o.hidden = true
vim.o.clipboard = 'unnamedplus'

vim.cmd('imap jk <ESC>')
vim.cmd('nmap <ESC> :noh<CR>')

vim.cmd('syntax on')
vim.cmd('set noerrorbells')
vim.cmd('set novisualbell')

vim.cmd('set smarttab')
vim.cmd('set tabstop=2')

vim.cmd('set shiftwidth=2')
vim.cmd('set expandtab')

vim.cmd('set nowrap')
vim.cmd('set smartcase')

vim.cmd('set noswapfile')
vim.cmd('set nobackup')
vim.cmd('set nowritebackup')
vim.cmd('set incsearch')
vim.cmd('set encoding=UTF-8')


vim.cmd('set number relativenumber')
vim.cmd('set nu rnu')


vim.cmd('set cursorline')
vim.cmd('set nocompatible')


require('plugins')

require('theme')
require('filetree')
require('buffers')
require('fuzzyfinder')
require('git')
require('quickfix')
require('lsp')
require('whichkey')
