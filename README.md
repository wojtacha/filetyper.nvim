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


## 🚀 Usage

```vim
:FiletyperToggle
```

### 🔭 `:FiletyperTelescope`
This plugin uses vim.ui as default option if you have telescope it will be used instead of default

### 🔎 `:FiletyperQuickFix`

### 🔎 `:FiletyperLocList`


