# telescope-greek-letters

Search greek letters using [telescope.nvim](https://github.com/nvim-telescope) and insert LaTeX code on selection.

## Requirements

This plugin requires [telescope.nvim](https://github.com/nvim-telescope). Please make sure you have it installed.

## Installation

Lazy

```lua
{
  'Rothbard-m/telescope-greek-letters.nvim',
  config = function()
    require('greek_letters_plugin').setup{
      keymap = "<leader>fl"  -- Use "<leader>fl" as the keymap
    }
  end,
  dependencies = { 'nvim-telescope/telescope.nvim' }
},
```

## Setup

To initialise the plugin after installing. Call the set up function shown below. This is a simple plugin with the only option to set a different keymap from the default.

```lua
require('greek_letters_plugin').setup{
    keymap = "<leader>fl"  -- Use "<leader>fl" as the keymap
}
```

## Usage
