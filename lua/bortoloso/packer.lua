-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- Plugin manager
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'},
        { "nvim-telescope/telescope-live-grep-args.nvim" },
        config = function()
            require("telescope").load_extension("live_grep_args")
        end
    }

}

-- Syntax highlight
use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate' })

-- To view the undo tree and navigate through it
use( 'mbbill/undotree')

-- Autocomplete
use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'}     -- Required
    }
}

-- Good colorscheme
use ('gruvbox-community/gruvbox')

-- Show marks in an info line
use('jacquesbh/vim-showmarks')

-- A start window, with a good session management
use ('mhinz/vim-startify')

-- Nice info line and tab line
use ('itchyny/lightline.vim')

-- Plugin to use git inside vim
use ('tpope/vim-fugitive')
end)
