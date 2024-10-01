return {
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects' },
        event = 'BufRead',
        config = function()
            require('nvim-treesitter.configs').setup({
                textobjects = {
                    select = {
                        enable = true,

                        -- Automatically jump forward to textobj, similar to targets.vim
                        lookahead = true,

                        keymaps = {
                            -- You can use the capture groups defined in textobjects.scm
                            ['am'] = '@function.outer',
                            ['im'] = '@function.inner',
                            ['ac'] = '@class.outer',
                            -- You can optionally set descriptions to the mappings (used in the desc parameter of
                            -- nvim_buf_set_keymap) which plugins like which-key display
                            ['ic'] = { query = '@class.inner', desc = 'Select inner part of a class region' },
                            -- You can also use captures from other query groups like `locals.scm`
                            ['as'] = { query = '@scope', query_group = 'locals', desc = 'Select language scope' },
                        },
                        -- You can choose the select mode (default is charwise 'v')
                        --
                        -- Can also be a function which gets passed a table with the keys
                        -- * query_string: eg '@function.inner'
                        -- * method: eg 'v' or 'o'
                        -- and should return the mode ('v', 'V', or '<c-v>') or a table
                        -- mapping query_strings to modes.
                        selection_modes = {
                            ['@parameter.outer'] = 'v', -- charwise
                            ['@function.outer'] = 'V', -- linewise
                            ['@class.outer'] = '<c-v>', -- blockwise
                        },
                        -- If you set this to `true` (default is `false`) then any textobject is
                        -- extended to include preceding or succeeding whitespace. Succeeding
                        -- whitespace has priority in order to act similarly to eg the built-in
                        -- `ap`.
                        --
                        -- Can also be a function which gets passed a table with the keys
                        -- * query_string: eg '@function.inner'
                        -- * selection_mode: eg 'v'
                        -- and should return true or false
                        include_surrounding_whitespace = true,
                    },
                    swap = {
                        enable = true,
                        swap_next = {
                            ['<leader>a'] = '@parameter.inner',
                        },
                        swap_previous = {
                            ['<leader>A'] = '@parameter.inner',
                        },
                    },
                    move = {
                        enable = true,
                        set_jumps = true, -- whether to set jumps in the jumplist
                        goto_next_start = {
                            [']m'] = '@function.outer',
                            [']]'] = { query = '@class.outer', desc = 'Next class start' },
                            --
                            -- You can use regex matching (i.e. lua pattern) and/or pass a list in a "query" key to group multiple queries.
                            [']l'] = '@loop.*',
                            -- ["]o"] = { query = { "@loop.inner", "@loop.outer" } }
                            --
                            -- You can pass a query group to use query from `queries/<lang>/<query_group>.scm file in your runtime path.
                            -- Below example nvim-treesitter's `locals.scm` and `folds.scm`. They also provide highlights.scm and indent.scm.
                            [']s'] = { query = '@scope', query_group = 'locals', desc = 'Next scope' },
                            [']z'] = { query = '@fold', query_group = 'folds', desc = 'Next fold' },
                        },
                        goto_next_end = {
                            [']M'] = '@function.outer',
                            [']['] = '@class.outer',
                        },
                        goto_previous_start = {
                            ['[m'] = '@function.outer',
                            ['[['] = '@class.outer',
                        },
                        goto_previous_end = {
                            ['[M'] = '@function.outer',
                            ['[]'] = '@class.outer',
                        },
                        -- Below will go to either the start or the end, whichever is closer.
                        -- Use if you want more granular movements
                        -- Make it even more gradual by adding multiple queries and regex.
                        goto_next = {
                            [']f'] = '@conditional.outer',
                        },
                        goto_previous = {
                            ['[f'] = '@conditional.outer',
                        },
                    },
                },
                ensure_installed = { 'markdown', 'markdown_inline' },
                highlight = {
                    enable = true,
                },
            })

            local ts_repeat_move = require('nvim-treesitter.textobjects.repeatable_move')
            -- Repeat movement with ; and ,
            -- ensure ; goes forward and , goes backward regardless of the last direction
            larp.fn.map({ 'n', 'x', 'o' }, ';', ts_repeat_move.repeat_last_move_next)
            larp.fn.map({ 'n', 'x', 'o' }, ',', ts_repeat_move.repeat_last_move_previous)

            -- vim way: ; goes to the direction you were moving.
            larp.fn.map({ 'n', 'x', 'o' }, ';', ts_repeat_move.repeat_last_move)
            larp.fn.map({ 'n', 'x', 'o' }, ',', ts_repeat_move.repeat_last_move_opposite)

            -- Optionally, make builtin f, F, t, T also repeatable with ; and ,
            larp.fn.map({ 'n', 'x', 'o' }, 'f', ts_repeat_move.builtin_f_expr, { expr = true })
            larp.fn.map({ 'n', 'x', 'o' }, 'F', ts_repeat_move.builtin_F_expr, { expr = true })
            larp.fn.map({ 'n', 'x', 'o' }, 't', ts_repeat_move.builtin_t_expr, { expr = true })
            larp.fn.map({ 'n', 'x', 'o' }, 'T', ts_repeat_move.builtin_T_expr, { expr = true })
            -- example: make gitsigns.nvim movement repeatable with ; and , keys.
            local gs = require('gitsigns')

            -- make sure forward function comes first
            local next_hunk_repeat, prev_hunk_repeat = ts_repeat_move.make_repeatable_move_pair(gs.next_hunk, gs.prev_hunk)
            -- Or, use `make_repeatable_move` or `set_last_move` functions for more control. See the code for instructions.

            larp.fn.map({ 'n', 'x', 'o' }, ']h', next_hunk_repeat)
            larp.fn.map({ 'n', 'x', 'o' }, '[h', prev_hunk_repeat)
        end,
    },
    {
        'nvim-treesitter/nvim-treesitter-context',
        config = function()
            require('treesitter-context').setup({
                enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
                max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
                min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
                line_numbers = true,
                multiline_threshold = 20, -- Maximum number of lines to show for a single context
                trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
                mode = 'cursor', -- Line used to calculate context. Choices: 'cursor', 'topline'
                -- Separator between context and content. Should be a single character string, like '-'.
                -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
                separator = nil,
                zindex = 20, -- The Z-index of the context window
                on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
            })
            larp.fn.map('n', '[c', function()
                require('treesitter-context').go_to_context(vim.v.count1)
            end, { silent = true })
        end,
    },
    -- {
    --     'nvim-treesitter/nvim-treesitter',
    --     build = ':TSUpdate',
    --     event = 'BufRead',
    --     config = function()
    --         require('nvim-treesitter.configs').setup({
    --             -- A list of parser names, or "all" (the listed parsers MUST always be installed)
    --             ensure_installed = { 'c', 'cpp', 'lua', 'vim', 'vimdoc', 'query', 'markdown', 'markdown_inline', 'rust', 'norg' },
    --
    --             -- Install parsers synchronously (only applied to `ensure_installed`)
    --             sync_install = false,
    --
    --             -- Automatically install missing parsers when entering buffer
    --             -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    --             auto_install = true,
    --
    --             ignore_install = { 'oil' },
    --
    --             ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
    --             -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!
    --
    --             highlight = {
    --                 enable = true,
    --
    --                 -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    --                 disable = function(lang, buf)
    --                     -- disable treesitter for these langs
    --                     local ignored = { 'oil' }
    --                     if vim.tbl_contains(ignored, lang) then
    --                         return true
    --                     end
    --
    --                     -- disable treesitter for files too large
    --                     local max_filesize = 100 * 1024 -- 100 KB
    --                     local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
    --                     if ok and stats and stats.size > max_filesize then
    --                         return true
    --                     end
    --                 end,
    --
    --                 -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    --                 -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    --                 -- Using this option may slow down your editor, and you may see some duplicate highlights.
    --                 -- Instead of true it can also be a list of languages
    --                 additional_vim_regex_highlighting = false,
    --             },
    --         })
    --     end,
    -- },
}
