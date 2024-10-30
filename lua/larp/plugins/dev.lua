return {

    {
        'stevearc/overseer.nvim',
        dependencies = {
            'akinsho/toggleterm.nvim',
            -- 'rmagatti/auto-session',
        },
        config = function()
            require('custom.overseer')
        end,
    },
    {
        'mfussenegger/nvim-dap',
        dependencies = {
            {
                'rcarriga/nvim-dap-ui',
                dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' },
            },
            {
                'nvim-treesitter/nvim-treesitter',
                build = ':TSUpdate',
            },
            'theHamsta/nvim-dap-virtual-text',
        },
        config = function()
            require('custom.nvim-dap')
        end,
    },
    {
        -- 1. Highlights TODO, FIXME, etc. in your code
        -- 2. Provides a list of all the highlights in your project
        'folke/todo-comments.nvim',
        event = 'BufRead',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('custom.todo-comments')
        end,
    },
    {
        'luckasRanarison/nvim-devdocs',
        enabled = false,
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope.nvim',
            'nvim-treesitter/nvim-treesitter',
        },
        opts = {},
    },
}
