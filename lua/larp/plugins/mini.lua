return {
    -- # Provides various useful modules
    'echasnovski/mini.nvim',
    version = '*',
    config = function()
        -- mini.align is a module that aligns text in visual mode
        require('mini.align').setup({})

        -- mini.ai is a module that provides more text objects, especially for ones that start with `a(round)`, and `i(nside)`
        -- Check out the documentation for more information (https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-ai.md)
        require('mini.ai').setup({})
        require('mini.surround').setup({
            respect_selection_type = true,
            mappings = {
                add = 'Sa', -- Add surrounding in Normal and Visual modes
                delete = 'Sd', -- Delete surrounding
                find = 'Sf', -- Find surrounding (to the right)
                find_left = 'SF', -- Find surrounding (to the left)
                highlight = 'Sh', -- Highlight surrounding
                replace = 'Sr', -- Replace surrounding
                update_n_lines = 'Sn', -- Update `n_lines`

                suffix_last = 'l', -- Suffix to search with "prev" method
                suffix_next = 'n', -- Suffix to search with "next" method
            },
        })
        require('mini.move').setup({
            mappings = {
                -- In Visual Mode
                left = 'H',
                right = 'L',
                down = 'J',
                up = 'K',

                -- In Normal Mode
                line_left = '<M-s-h>',
                line_right = '<M-s-l>',
                line_down = '<M-s-j>',
                line_up = '<M-s-k>',
            },
        })
        require('mini.sessions').setup({
            autoread = true,
            autowrite = true,
            verbose = {
                read = true,
                write = true,
                delete = true,
            },
        })
        require('mini.splitjoin').setup({})
    end,
}
