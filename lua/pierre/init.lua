-- Pierre colorscheme for Neovim
-- Ported from the Pierre VS Code theme

local M = {}

M.config = {
  variant = "dark", -- "dark" or "light"
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},
  },
}

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

function M.load()
  -- Reset colors
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "pierre"

  local variant = M.config.variant

  -- Set background
  vim.o.background = variant == "light" and "light" or "dark"

  -- Load and apply theme
  local theme = require("pierre.theme")
  local highlights = theme.load(variant)

  -- Handle transparency
  if M.config.transparent then
    local transparent_groups = {
      "Normal",
      "NormalNC",
      "NormalFloat",
      "SignColumn",
      "FoldColumn",
      "EndOfBuffer",
    }
    for _, group in ipairs(transparent_groups) do
      if highlights[group] then
        highlights[group].bg = "NONE"
      end
    end
  end

  -- Apply custom styles
  if M.config.styles.comments and M.config.styles.comments.italic ~= nil then
    if highlights["Comment"] then
      highlights["Comment"].italic = M.config.styles.comments.italic
    end
    if highlights["@comment"] then
      highlights["@comment"].italic = M.config.styles.comments.italic
    end
  end

  -- Apply highlights
  theme.apply(highlights)

  -- Set terminal colors
  if M.config.terminal_colors then
    local colors = theme.terminal_colors(variant)
    for i, color in ipairs(colors) do
      vim.g["terminal_color_" .. (i - 1)] = color
    end
  end
end

-- Convenience function to reload the theme
function M.reload()
  package.loaded["pierre"] = nil
  package.loaded["pierre.theme"] = nil
  package.loaded["pierre.palette"] = nil
  package.loaded["pierre.groups.base"] = nil
  package.loaded["pierre.groups.treesitter"] = nil
  package.loaded["pierre.groups.lsp"] = nil
  package.loaded["pierre.groups.plugins"] = nil
  require("pierre").load()
end

return M
