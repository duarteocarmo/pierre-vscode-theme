# Pierre

A modern Neovim colorscheme with carefully crafted colors for comfortable coding, inspired by the Pierre design philosophy.

## Features

- **Dual Variants**: Carefully balanced Dark and Light themes
- **Enhanced Contrast**: Improved color contrast for better readability
- **Modern Syntax Highlighting**: Full Treesitter support with refined typography
- **LSP Integration**: Comprehensive semantic tokens and diagnostics highlighting
- **Rich Typography**: Strategic use of bold and italic styles for better visual hierarchy
- **Plugin Ecosystem**: Deep integration with 29+ popular Neovim plugins
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

The theme uses a carefully crafted color palette with 13 color families, each with multiple shades for optimal semantic meaning:

- **Gray** - UI elements, borders, and neutral tones with enhanced contrast
- **Red** - Errors, deleted content, and danger states
- **Orange** - Variables and parameters with improved distinction
- **Yellow** - Constants, warnings, and namespaces
- **Green** - Strings, success states, and additions
- **Mint** - Attributes and success indicators
- **Teal** - Regular expressions and escape sequences
- **Cyan** - Numbers, operators, and info states
- **Blue** - Accent colors, links, and primary actions
- **Indigo** - Functions, methods, and merge states
- **Purple** - Types, interfaces, and structures
- **Pink** - Keywords and control flow
- **Brown** - Muted elements and subtle highlights

## Design Philosophy

Pierre follows these core principles:

- **Semantic Clarity**: Each color has a clear, consistent meaning across all contexts
- **Visual Hierarchy**: Strategic use of bold, italic, and color intensity to guide the eye
- **Reduced Eye Strain**: Carefully selected contrast ratios and color temperatures
- **Context Awareness**: Different highlighting for built-in vs. user-defined elements
- **Plugin Harmony**: Consistent styling across the entire Neovim ecosystem

## License

MIT
