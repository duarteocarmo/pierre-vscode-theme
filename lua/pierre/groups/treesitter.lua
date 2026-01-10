-- Treesitter highlight groups
local M = {}

function M.get(c)
  return {
    -- Identifiers
    ["@variable"] = { fg = c.syntax.variable },
    ["@variable.builtin"] = { fg = c.syntax.namespace },
    ["@variable.parameter"] = { fg = c.syntax.parameter },
    ["@variable.member"] = { fg = c.syntax.variable },

    -- Constants
    ["@constant"] = { fg = c.syntax.constant, bold = true },
    ["@constant.builtin"] = { fg = c.syntax.number, bold = true },
    ["@constant.macro"] = { fg = c.syntax.constant, bold = true },

    -- Modules/Namespaces
    ["@module"] = { fg = c.syntax.namespace },
    ["@module.builtin"] = { fg = c.syntax.namespace },
    ["@label"] = { fg = c.syntax.tag, bold = true },

    -- Strings
    ["@string"] = { fg = c.syntax.string },
    ["@string.documentation"] = { fg = c.syntax.string },
    ["@string.regexp"] = { fg = c.syntax.regexp },
    ["@string.escape"] = { fg = c.syntax.escape },
    ["@string.special"] = { fg = c.syntax.escape },
    ["@string.special.symbol"] = { fg = c.syntax.string },
    ["@string.special.url"] = { fg = c.accent.link, underline = true },
    ["@string.special.path"] = { fg = c.syntax.string },

    -- Characters
    ["@character"] = { fg = c.syntax.string },
    ["@character.special"] = { fg = c.syntax.escape },

    -- Numbers
    ["@number"] = { fg = c.syntax.number },
    ["@number.float"] = { fg = c.syntax.number },

    -- Booleans
    ["@boolean"] = { fg = c.syntax.number, bold = true },

    -- Types
    ["@type"] = { fg = c.syntax.type },
    ["@type.builtin"] = { fg = c.syntax.type },
    ["@type.definition"] = { fg = c.syntax.type, bold = true },
    ["@type.qualifier"] = { fg = c.syntax.keyword },

    -- Attributes/Decorators
    ["@attribute"] = { fg = c.syntax.decorator },
    ["@attribute.builtin"] = { fg = c.syntax.decorator },
    ["@property"] = { fg = c.syntax.variable },

    -- Functions
    ["@function"] = { fg = c.syntax.func },
    ["@function.builtin"] = { fg = c.syntax.func },
    ["@function.call"] = { fg = c.syntax.func },
    ["@function.macro"] = { fg = c.syntax.func },
    ["@function.method"] = { fg = c.syntax.func },
    ["@function.method.call"] = { fg = c.syntax.func },

    -- Constructors
    ["@constructor"] = { fg = c.syntax.type, bold = true },

    -- Operators
    ["@operator"] = { fg = c.syntax.operator },

    -- Keywords
    ["@keyword"] = { fg = c.syntax.keyword },
    ["@keyword.coroutine"] = { fg = c.syntax.keyword },
    ["@keyword.function"] = { fg = c.syntax.keyword },
    ["@keyword.operator"] = { fg = c.syntax.keyword },
    ["@keyword.import"] = { fg = c.syntax.keyword },
    ["@keyword.type"] = { fg = c.syntax.keyword },
    ["@keyword.modifier"] = { fg = c.syntax.keyword },
    ["@keyword.repeat"] = { fg = c.syntax.keyword },
    ["@keyword.return"] = { fg = c.syntax.keyword },
    ["@keyword.debug"] = { fg = c.states.warn },
    ["@keyword.exception"] = { fg = c.syntax.keyword },
    ["@keyword.conditional"] = { fg = c.syntax.keyword },
    ["@keyword.conditional.ternary"] = { fg = c.syntax.keyword },
    ["@keyword.directive"] = { fg = c.syntax.decorator },
    ["@keyword.directive.define"] = { fg = c.syntax.decorator },

    -- Punctuation
    ["@punctuation.bracket"] = { fg = c.syntax.punctuation },
    ["@punctuation.delimiter"] = { fg = c.syntax.punctuation },
    ["@punctuation.special"] = { fg = c.syntax.keyword },

    -- Comments
    ["@comment"] = { fg = c.syntax.comment, italic = true },
    ["@comment.documentation"] = { fg = c.syntax.comment, italic = true },
    ["@comment.error"] = { fg = c.states.danger },
    ["@comment.warning"] = { fg = c.states.warn },
    ["@comment.note"] = { fg = c.states.info },
    ["@comment.todo"] = { fg = c.states.info, bold = true },

    -- Markup
    ["@markup"] = { fg = c.fg.base },
    ["@markup.strong"] = { fg = c.syntax.constant, bold = true },
    ["@markup.italic"] = { fg = c.syntax.keyword, italic = true },
    ["@markup.strikethrough"] = { fg = c.fg.fg3, strikethrough = true },
    ["@markup.underline"] = { underline = true },
    ["@markup.heading"] = { fg = c.syntax.tag, bold = true },
    ["@markup.heading.1"] = { fg = c.syntax.tag, bold = true },
    ["@markup.heading.2"] = { fg = c.syntax.tag, bold = true },
    ["@markup.heading.3"] = { fg = c.syntax.tag, bold = true },
    ["@markup.heading.4"] = { fg = c.syntax.tag, bold = true },
    ["@markup.heading.5"] = { fg = c.syntax.tag, bold = true },
    ["@markup.heading.6"] = { fg = c.syntax.tag, bold = true },
    ["@markup.quote"] = { fg = c.syntax.comment },
    ["@markup.math"] = { fg = c.syntax.number },
    ["@markup.environment"] = { fg = c.syntax.keyword },
    ["@markup.link"] = { fg = c.accent.link },
    ["@markup.link.label"] = { fg = c.syntax.func },
    ["@markup.link.url"] = { fg = c.syntax.keyword, underline = true },
    ["@markup.raw"] = { fg = c.syntax.string },
    ["@markup.raw.block"] = { fg = c.syntax.string },
    ["@markup.list"] = { fg = c.syntax.tag },
    ["@markup.list.checked"] = { fg = c.states.success },
    ["@markup.list.unchecked"] = { fg = c.fg.fg3 },

    -- Diff
    ["@diff.plus"] = { fg = c.states.success },
    ["@diff.minus"] = { fg = c.states.danger },
    ["@diff.delta"] = { fg = c.accent.primary },

    -- Tags (HTML/XML)
    ["@tag"] = { fg = c.syntax.tag },
    ["@tag.builtin"] = { fg = c.syntax.tag },
    ["@tag.attribute"] = { fg = c.syntax.attribute },
    ["@tag.delimiter"] = { fg = c.syntax.punctuation },

    -- Language-specific
    -- TypeScript/JavaScript
    ["@type.typescript"] = { fg = c.syntax.type },
    ["@constructor.typescript"] = { fg = c.syntax.type },
    ["@property.typescript"] = { fg = c.syntax.variable },
    ["@variable.typescript"] = { fg = c.syntax.variable },
    ["@lsp.type.interface.typescript"] = { fg = c.syntax.type },

    -- Python
    ["@variable.python"] = { fg = c.syntax.variable },
    ["@attribute.python"] = { fg = c.syntax.decorator },
    ["@type.python"] = { fg = c.syntax.type },
    ["@variable.parameter.python"] = { fg = c.syntax.constant },
    ["@function.builtin.python"] = { fg = c.syntax.func },

    -- Rust
    ["@type.rust"] = { fg = c.syntax.type },
    ["@function.macro.rust"] = { fg = c.syntax.func },
    ["@storageclass.lifetime.rust"] = { fg = c.syntax.punctuation },
    ["@variable.rust"] = { fg = c.syntax.variable },

    -- Go
    ["@type.go"] = { fg = c.syntax.type },
    ["@function.go"] = { fg = c.syntax.func },

    -- Lua
    ["@field.lua"] = { fg = c.syntax.variable },
    ["@constructor.lua"] = { fg = c.syntax.punctuation },

    -- CSS/SCSS
    ["@property.css"] = { fg = c.syntax.operator },
    ["@string.css"] = { fg = c.syntax.string },
    ["@number.css"] = { fg = c.syntax.number },
    ["@type.css"] = { fg = c.syntax.tag },

    -- JSON
    ["@property.json"] = { fg = c.syntax.tag },
    ["@label.json"] = { fg = c.syntax.tag },

    -- YAML
    ["@field.yaml"] = { fg = c.syntax.tag },
    ["@property.yaml"] = { fg = c.syntax.tag },

    -- TOML
    ["@property.toml"] = { fg = c.syntax.tag },
    ["@type.toml"] = { fg = c.syntax.tag },
  }
end

return M
