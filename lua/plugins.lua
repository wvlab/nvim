vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    use "nvim-lua/plenary.nvim"
    use "kyazdani42/nvim-web-devicons"

    use { "nvim-lualine/lualine.nvim",
        requires = {
            "kyazdani42/nvim-web-devicons",
        },
    }

    use { "romgrk/barbar.nvim",
        requires = {
            "kyazdani42/nvim-web-devicons",
        },
    }

    use "mbbill/undotree"

    use "stevearc/oil.nvim"

    use "lewis6991/gitsigns.nvim"

    use "Yazeed1s/oh-lucy.nvim"

    use {
        "L3MON4D3/LuaSnip",
        'saghen/blink.cmp',
    }

    use "nvim-treesitter/nvim-treesitter"

    use {
        "neovim/nvim-lspconfig",
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "nvimtools/none-ls.nvim",
        "jay-babu/mason-null-ls.nvim",
    }

    use {
        "nvim-telescope/telescope.nvim",
        'nvim-telescope/telescope-ui-select.nvim',
        requires = { "nvim-lua/plenary.nvim" }
    }

    use "lervag/vimtex"

    use "mattn/emmet-vim"
end)
