require('todo-comments').setup({})
larp.fn.map('n', ']t', function()
    require('todo-comments').jump_next()
end, { desc = 'Next todo comment' })
larp.fn.map('n', '[t', function()
    require('todo-comments').jump_prev()
end, { desc = 'Previous todo comment' })
-- You can also specify a list of valid jump keywords
larp.fn.map('n', ']t', function()
    require('todo-comments').jump_next({ keywords = { 'ERROR', 'WARNING' } })
end, { desc = 'Next error/warning todo comment' })
