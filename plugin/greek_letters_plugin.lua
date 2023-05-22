-- telescope greek_letters

-- Author: James Owen
-- Description: Neovim plugin for inserting Greek letters in LaTeX
-- Dependencies:
-- 'nvim-telescope/telescope.nvim'

local greek_letters = require('greek_letters.greek_letters')

local M = {}

M.setup = function(options)
    options = options or {}
    local keymap = options.keymap or '<leader>gl'

    vim.api.nvim_set_keymap('n', keymap, ':lua require"greek_letters".greek_letters_picker()<CR>', { noremap = true, silent = true })
end

return M
