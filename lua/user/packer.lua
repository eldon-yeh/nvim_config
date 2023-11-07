-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Plenary
	use('nvim-lua/plenary.nvim')

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Colour theme
	use({ 'rose-pine/neovim', as = 'rose-pine' })
	require('rose-pine').setup({variant = 'moon'})
	vim.cmd('colorscheme rose-pine')

	-- Treesitter
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	-- Harpoon for file navigation
	use('ThePrimeagen/harpoon')
end)
