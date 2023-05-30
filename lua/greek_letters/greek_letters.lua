-- local pickers = require "telescope.pickers"
-- local finders = require "telescope.finders"
-- local conf = require("telescope.config").values
-- local actions = require "telescope.actions"
-- local action_state = require "telescope.actions.state"
--
-- local greek_letters = function(opts)
--   opts = opts or {}
--   opts.layout_config = {
--     height = 20,
--     width = 40,
--   }
--   pickers.new(opts, {
--     prompt_title = "Greek letters",
--     finder = finders.new_table {
--       results = {
--         { " alpha", "\\alpha" },
--         { " beta", "\\beta" },
--         { "γ gamma", "\\gamma" },
--         { "δ delta", "\\delta" },
--         { "ϵ epsilon", "\\alpha" },
--         { "ζ zêta", "\\zeta" },
--         { "η êta", "\\eta" },
--         { "𝜃 theta", "\\theta" },
--         { "𝜄 iota", "\\iota" },
--         { "κ kappa", "\\kappa" },
--         { "λ lambda", "\\lambda" },
--         { "𝜇 mu", "\\mu" },
--         { "𝜈 nu", "\\nu" },
--         { "𝜉 xi", "\\xi" },
--         { "ο omikron", "\\eta" },
--         { "𝜋 pi", "\\pi" },
--         { "𝛒 rho", "\\rho" },
--         -- { "κ sigma", "\\sigma" },
--         -- { "λ tau", "\\tau" },
--         -- { "𝜇 upsilon", "\\upsilon" },
--         -- { "𝜈 phi", "\\phi" },
--         -- { "𝜉 chi", "\\chi" },
--         -- { "ο psi", "\\psi" },
--         -- { "𝜋 omega", "\\omega" },
--       },
--       entry_maker = function(entry)
--         return {
--           value = entry,
--           display = entry[1],
--           ordinal = entry[1],
--         }
--       end
--     },
--     sorter = conf.generic_sorter(opts),
--     attach_mappings = function(prompt_bufnr, map)
--       actions.select_default:replace(function()
--         actions.close(prompt_bufnr)
--         local selection = action_state.get_selected_entry()
--         -- print(vim.inspect(selection))
--         vim.fn.setreg('', selection.value[2])
--         vim.cmd('normal! "' .. '"p')
--         -- vim.api.nvim_put({ selection[2] }, "", false, true)
--       end)
--       return true
--     end,
--   }):find()
-- end
--
-- greek_letters(require("telescope.themes").get_dropdown{})
