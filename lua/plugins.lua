vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    -- packer itself
    use "wbthomason/packer.nvim"
    use "nvim-lua/plenary.nvim"

    -- deps
    use "kyazdani42/nvim-web-devicons"

    -- lualine
    use { "nvim-lualine/lualine.nvim",
        requires = {
            "kyazdani42/nvim-web-devicons",
            opt = true,
        },
    }

    -- tabs
    use { "romgrk/barbar.nvim",
        requires = {
            "kyazdani42/nvim-web-devicons",
            opt = true,
        },
    }

    -- file tree
    use { "kyazdani42/nvim-tree.lua",
        requires = {
            "kyazdani42/nvim-web-devicons",
        },
    }
    use "mbbill/undotree"

    -- themes
    use {
        { "rose-pine/neovim", as = "rose-pine" },
        "Yazeed1s/oh-lucy.nvim",
        "mangeshrex/everblush.vim",
    }

    -- cmp plugins
    use {
        "hrsh7th/nvim-cmp", -- The completion plugin
        "hrsh7th/cmp-buffer", -- buffer completions
        "hrsh7th/cmp-path", -- path completions
        "hrsh7th/cmp-cmdline", -- cmdline completions
        "saadparwaiz1/cmp_luasnip", -- snippet completions
        "hrsh7th/cmp-nvim-lsp",
    }
    -- snippets
    use "L3MON4D3/LuaSnip" --snippet engine

    use "nvim-treesitter/nvim-treesitter"

    -- LSP
    use {
        "neovim/nvim-lspconfig", -- enable LSP
        "williamboman/mason.nvim", -- language server installer
        "williamboman/mason-lspconfig.nvim",
    }
    use "tamago324/nlsp-settings.nvim" -- language server settings in json

    -- Latex support
    use "lervag/vimtex"

    -- Emmet for html support
    use "mattn/emmet-vim"
end)
