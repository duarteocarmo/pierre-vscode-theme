-- Pierre theme - main theme module
local M = {}

-- Load highlight groups
function M.load(variant)
  variant = variant or "dark"

  local palette = require("pierre.palette")
  local c = palette.get(variant)

  -- Load all highlight group modules
  local base = require("pierre.groups.base").get(c)
  local treesitter = require("pierre.groups.treesitter").get(c)
  local lsp = require("pierre.groups.lsp").get(c)
  local plugins = require("pierre.groups.plugins").get(c)

  -- Merge all highlight groups
  local highlights = {}
  for name, hl in pairs(base) do
    highlights[name] = hl
  end
  for name, hl in pairs(treesitter) do
    highlights[name] = hl
  end
  for name, hl in pairs(lsp) do
    highlights[name] = hl
  end
  for name, hl in pairs(plugins) do
    highlights[name] = hl
  end

  return highlights
end

-- Apply highlights to Neovim
function M.apply(highlights)
  for name, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, name, hl)
  end
end

-- Get terminal colors for variant
function M.terminal_colors(variant)
  variant = variant or "dark"
  local palette = require("pierre.palette")
  local c = palette.get(variant)

  return {
    c.ansi.black,
    c.ansi.red,
    c.ansi.green,
    c.ansi.yellow,
    c.ansi.blue,
    c.ansi.magenta,
    c.ansi.cyan,
    c.ansi.white,
    c.ansi.bright_black,
    c.ansi.bright_red,
    c.ansi.bright_green,
    c.ansi.bright_yellow,
    c.ansi.bright_blue,
    c.ansi.bright_magenta,
    c.ansi.bright_cyan,
    c.ansi.bright_white,
  }
end

return M
