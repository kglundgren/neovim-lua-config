local fn = vim.fn

-- Automatically install packer.
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    print "Installing packer, close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file.
vim.cmd [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't error out on first use.
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
    return
end

-- Have packer use a popup window.
packer.init {
    display = {
        open_fn = function()
            return require('packer.util').float({ border = 'rounded' })
        end,
    },
}

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Packer can manage itself.
    use 'nvim-lua/popup.nvim' -- An implementation of the Popup API from Vim in Neovim.
    use 'nvim-lua/plenary.nvim' -- Useful lua functions used by lots of plugins.

    -- Colorschemes
    use 'ellisonleao/gruvbox.nvim'
    use 'folke/tokyonight.nvim'

    -- Auto-completion
    use 'hrsh7th/nvim-cmp' -- Completion plugin. A completion engine plugin for neovim written in Lua. 
    use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in language server client.
    use 'hrsh7th/cmp-nvim-lua' -- Neovim Lua API.
    use 'hrsh7th/cmp-buffer' -- Buffer completions.
    use 'hrsh7th/cmp-path' -- Path completions.
    use 'hrsh7th/cmp-cmdline' -- Cmdline completions.
    use 'saadparwaiz1/cmp_luasnip' -- Snippet completions.

    -- Snippets
    use 'L3MON4D3/LuaSnip' -- Snippet engine. Luasnip completion source for nvim-cmp.
    use 'rafamadriz/friendly-snippets' -- A bunch of snippets to use.

    -- LSP
    use 'neovim/nvim-lspconfig' -- Enable LSP. Official neovim source.
    use 'williamboman/mason.nvim' -- LSP installer.
    -- This plugin bridges mason.nvim with the official lspconfig plugin - making it easier to use both plugins together.
    use 'williamboman/mason-lspconfig.nvim' 

    -- Automatically set up your configuration after cloning packer.nvim.
    -- Put this at the end after all plugins.
    if PACKER_BOOTSTRAP then
        require('packer').sync()
    end
end)
