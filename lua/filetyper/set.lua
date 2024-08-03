local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local config = require("telescope.config").values
local actions = require("telescope.actions")
local actions_state = require("telescope.actions.state")

local M = {}

function M.select_filetype(opts)

	opts = opts or {}
	pickers.new(opts, {
			finder = finders.new_table({
				results = { "json", "lua" },
			}),
			sorter = config.generic_sorter(opts),
			attach_mappings = function(bufnumber, map)
				actions.select_default:replace(function()
					actions.close(bufnumber)
					local selection = actions_state.get_selected_entry()
					vim.cmd("set ft=" .. selection.value)
				end)
				return true
			end,
		})
		:find()
end

return M
