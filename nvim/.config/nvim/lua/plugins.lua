-- Install packer automatically
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

vim.cmd [[packadd packer.nvim]]

-- Plugins

return require('packer').startup(function()
	-- Packer
	use {"wbthomason/packer.nvim", opt = true}

	-- Themes
	use 'morhetz/gruvbox'
	use { 'sonph/onehalf', rtp='vim' }
  use 'ayu-theme/ayu-vim'
	use 'vim-airline/vim-airline-themes'

	-- Navigation
	use 'kyazdani42/nvim-web-devicons'
	use 'vim-airline/vim-airline'
	use { 'romgrk/barbar.nvim' }
	use "kyazdani42/nvim-tree.lua"
	use 'ryanoasis/vim-devicons'
	use 'liuchengxu/vim-which-key'
	use { 'AckslD/nvim-whichkey-setup.lua', requires = { 'liuchengxu/vim-which-key' } }

	-- Convenience
	use 'tpope/vim-commentary'
	use 'tpope/vim-surround'
	use 'jiangmiao/auto-pairs'
	use 'mattn/emmet-vim'
  use 'ggandor/lightspeed.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'lambdalisue/suda.vim'

	-- Git
	use 'tpope/vim-fugitive'
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }

	-- Fuzzy
	use 'nvim-lua/popup.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-telescope/telescope-project.nvim'
	use 'nvim-telescope/telescope-fzy-native.nvim'

	-- Languages
	use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'windwp/nvim-ts-autotag'
  use 'HerringtonDarkholme/yats.vim'

	-- LSP 
	use { 'neoclide/coc.nvim', branch='release' }
	use { 'prettier/vim-prettier', run='yarn install' }
	-- use 'neovim/nvim-lspconfig'
	-- use 'hrsh7th/nvim-compe'
	-- use 'glepnir/lspsaga.nvim'
	-- use 'nvim-lua/lsp-status.nvim'

end)
