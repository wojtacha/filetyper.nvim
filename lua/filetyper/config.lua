local M = {}

M.options = {}

local defaults = {
	filetypes = { "json", "lua", "xml", "yaml" },
}

function M.setup(options)
	-- vim.notify(vim.inspect(options))
	M.options = vim.tbl_deep_extend("force", defaults, options)
end

return M
