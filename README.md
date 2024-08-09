# ✅  Filetyper
 
Have you ever had a problem with piping output to Vim with someawesomecommand | vim - and then found yourself cursing under your breath because syntax highlighting isn't enabled, and you need to manually type :set ft=json or another filetype? No? Well, I basically made this plugin for myself. With Filetyper.nvim, you can quickly set the filetype for any unsaved buffer with a simple key command.

## ✨ Features

- search types with [Telescope](https://github.com/nvim-telescope/telescope.nvim)

## ⚡️ Requirements

None for now

## 📦 Installation

Install the plugin with your preferred package manager:

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{

  "wojtacha/filetyper.nvim",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
}
```

### 🔭 `:FiletyperTelescope`
This plugin uses vim.ui by default. If [telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim) is installed, it will override the default; alternatively, you can use dressing.nvim as described above.

## ⚙️ Configuration

Filetyper comes with the following config defaults:

```lua
{
  filetypes = { "json", "lua", "xml", "yaml" },
}

```

You can assign all known types by vim

```lua
{
  "wojtacha/filetyper.nvim",
  opts = { filetypes = vim.fn.getcompletion("", "filetype"), }
}
```

Set keybinding for toggle command

```lua
  vim.keymap.set("n", "<leader>t", "<cmd>FiletyperToggle<cr>", { desc = "Toggle Filetyper" })
```

### Change Window for Selecting File Type

This feature is made possible by the awesome [dressing](https://github.com/stevearc/dressing.nvim) plugin, which enhances the user interface for selecting file types and other prompts.

To enable this feature, follow these steps:

1. Install Required Plugins:

	Install the [dressing](https://github.com/stevearc/dressing.nvim) plugin.
 
	Install the [ fzf_lua ](https://github.com/ibhagwan/fzf-lua) plugin for displaying results.

3. Configuration:
 
	After installing the plugins, configure them as follows:

```lua
require('dressing').setup({
  select = {
    get_config = function(opts)
      if opts.kind == 'filetyper' then
        return {
          backend = 'fzf_lua',
          }
        }
      end
    end
  }
})
```

## 🚀 Usage

```vim
:FiletyperToggle
```


### 🔎 `:FiletyperQuickFix`
TBD

### 🔎 `:FiletyperLocList`
TBD


