local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local conf = require("telescope.config").values
local actions = require "telescope.actions"
local action_state = require "telescope.actions.state"

local letters = require("greek_letters").greek_letters

local greek_letters = function(opts)
  opts = opts or {}
  opts.layout_config = {
    height = 20,
    width = 40,
  }
  pickers.new(opts, {
    prompt_title = "Greek letters",
    finder = finders.new_table {
      results = {
        letters
      },
      entry_maker = function(entry)
        return {
          value = entry,
          display = entry[1],
          ordinal = entry[1],
        }
      end
    },
    sorter = conf.generic_sorter(opts),
    attach_mappings = function(prompt_bufnr, map)
      actions.select_default:replace(function()
        actions.close(prompt_bufnr)
        local selection = action_state.get_selected_entry()
        -- print(vim.inspect(selection))
        vim.fn.setreg('', selection.value[2])
        vim.cmd('normal! "' .. '"p')
        -- vim.api.nvim_put({ selection[2] }, "", false, true)
      end)
      return true
    end,
  }):find()
end

-- greek_letters(require("telescope.themes").get_dropdown{})



return require("telescope").register_extension {
  setup = function(ext_config, config)
    -- access extension config and user config
  end,
  exports = {
    stuff = require("greek_letters").stuff
  },
}
