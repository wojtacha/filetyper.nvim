local Config = require("filetyper.config")

local M = {}

function M.select_filetype()
	local opts = Config.options or Config.defaults

	local filetypes = opts.filetypes or vim.fn.getcompletion("", "filetype")

	vim.ui.select(filetypes, {
		prompt = "Set filetype",
		format_item = function(item)
			return item
		end,
		kind = "filetyper",
	}, function(choice)
		vim.cmd("set ft=" .. choice)
	end)
end

return M
