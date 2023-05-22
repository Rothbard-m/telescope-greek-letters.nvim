
local greek_letters = {
    { label = 'alpha', code = '\\alpha' },
    { label = 'beta', code = '\\beta' },
    { label = 'gamma', code = '\\gamma' },
    -- Add more Greek letters as needed
}

local telescope_loaded, telescope = pcall(require, 'telescope')
if not telescope_loaded then
    error('Telescope not found. Make sure the Telescope plugin is installed and properly set up.')
end

local actions = require('telescope.actions')
local actions_state = require('telescope.actions.state')
local entry_display = require('telescope.pickers.entry_display')

-- Define the Telescope picker
local greek_picker = telescope.make_entry {
    display = entry_display.create {
        separator = ' ',
        items = {
            { width = 10 },
            { remaining = true },
        }
    },
    sorter = entry_display.sorters.get_generic_fuzzy_sorter(),
}

-- Create the Telescope picker for Greek letters
local pickers = require('telescope.pickers')
local find_greek_letter = function(prompt_bufnr)
    local letter = actions_state.get_selected_entry(prompt_bufnr)
    actions.close(prompt_bufnr)
    if letter then
        vim.api.nvim_put({ letter.code }, '', true, true)
    end
end

local greek_letters_picker = function()
    pickers.new {
        prompt_title = 'Greek Letters',
        finder = telescope.make_builtin {
            results = greek_letters,
            entry_maker = function(letter)
                return {
                    value = letter,
                    ordinal = letter.label,
                    display = {
                        letter.label,
                        letter.code,
                    },
                }
            end,
        },
        sorter = greek_picker,
        attach_mappings = function(prompt_bufnr, map)
            map('i', '<CR>', find_greek_letter)
            map('n', '<CR>', find_greek_letter)
            return true
        end,
    }:find()
end

return {
    greek_letters_picker = greek_letters_picker
}
