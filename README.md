# Pierre

A modern Neovim colorscheme with carefully crafted colors for comfortable coding.

## Features

- Dark and Light variants
- Treesitter support
- LSP semantic tokens support
- Support for popular plugins:
  - Telescope
  - nvim-cmp / blink.cmp
  - gitsigns.nvim
  - nvim-tree / neo-tree
  - lazy.nvim
  - mason.nvim
  - which-key.nvim
  - indent-blankline.nvim
  - trouble.nvim
  - noice.nvim
  - nvim-notify
  - dashboard-nvim / alpha-nvim
  - mini.nvim
  - leap.nvim / flash.nvim
  - nvim-navic / aerial.nvim
  - bufferline.nvim / barbar.nvim
  - snacks.nvim
  - render-markdown.nvim

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "duarteocarmo/pierre-nvim",
  name = "pierre",
  priority = 1000,
  config = function()
    require("pierre").setup({
      variant = "dark", -- "dark" or "light"
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
      },
    })
    vim.cmd.colorscheme("pierre")
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "duarteocarmo/pierre-nvim",
  config = function()
    require("pierre").setup({
      variant = "dark",
    })
    vim.cmd.colorscheme("pierre")
  end,
}
```

### Using vim-plug

```vim
Plug 'duarteocarmo/pierre-nvim'

" In your init.vim after plug#end():
lua require("pierre").setup({ variant = "dark" })
colorscheme pierre
```

## Configuration

```lua
require("pierre").setup({
  -- Choose between "dark" and "light"
  variant = "dark",

  -- Enable transparent background
  transparent = false,

  -- Enable terminal colors
  terminal_colors = true,

  -- Style overrides
  styles = {
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},
  },
})
```

## Usage

After setup, load the colorscheme:

```lua
vim.cmd.colorscheme("pierre")
-- Or for a specific variant:
vim.cmd.colorscheme("pierre-dark")
vim.cmd.colorscheme("pierre-light")
```

To switch variants dynamically:

```lua
require("pierre").setup({ variant = "light" })
require("pierre").load()
```

To reload the theme (useful during development):

```lua
require("pierre").reload()
```

## Palette

The theme uses a carefully crafted color palette with 13 color families:

- **Gray** - UI elements and neutral tones
- **Red** - Errors, deleted content
- **Orange** - Variables
- **Yellow** - Constants, warnings
- **Green** - Strings, success, additions
- **Mint** - Attributes, success states
- **Teal** - Regexp
- **Cyan** - Numbers, operators
- **Blue** - Accent, links
- **Indigo** - Functions, merge
- **Purple** - Types
- **Pink** - Keywords
- **Brown** - Muted elements

## License

MIT
