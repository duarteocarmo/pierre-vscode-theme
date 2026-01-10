-- LSP highlight groups
local M = {}

function M.get(c)
  return {
    -- Diagnostics
    DiagnosticError = { fg = c.states.danger },
    DiagnosticWarn = { fg = c.states.warn },
    DiagnosticInfo = { fg = c.states.info },
    DiagnosticHint = { fg = c.fg.fg2 },
    DiagnosticOk = { fg = c.states.success },

    DiagnosticVirtualTextError = { fg = c.states.danger, italic = true },
    DiagnosticVirtualTextWarn = { fg = c.states.warn, italic = true },
    DiagnosticVirtualTextInfo = { fg = c.states.info, italic = true },
    DiagnosticVirtualTextHint = { fg = c.fg.fg3, italic = true },
    DiagnosticVirtualTextOk = { fg = c.states.success, italic = true },

    DiagnosticUnderlineError = { sp = c.states.danger, undercurl = true },
    DiagnosticUnderlineWarn = { sp = c.states.warn, undercurl = true },
    DiagnosticUnderlineInfo = { sp = c.states.info, undercurl = true },
    DiagnosticUnderlineHint = { sp = c.fg.fg3, undercurl = true },
    DiagnosticUnderlineOk = { sp = c.states.success, undercurl = true },

    DiagnosticFloatingError = { fg = c.states.danger },
    DiagnosticFloatingWarn = { fg = c.states.warn },
    DiagnosticFloatingInfo = { fg = c.states.info },
    DiagnosticFloatingHint = { fg = c.fg.fg3 },
    DiagnosticFloatingOk = { fg = c.states.success },

    DiagnosticSignError = { fg = c.states.danger },
    DiagnosticSignWarn = { fg = c.states.warn },
    DiagnosticSignInfo = { fg = c.states.info },
    DiagnosticSignHint = { fg = c.fg.fg3 },
    DiagnosticSignOk = { fg = c.states.success },

    -- LSP References
    LspReferenceText = { bg = c.accent.subtle },
    LspReferenceRead = { bg = c.accent.subtle },
    LspReferenceWrite = { bg = c.accent.subtle },

    -- LSP Signature
    LspSignatureActiveParameter = { fg = c.accent.primary, bold = true },

    -- LSP CodeLens
    LspCodeLens = { fg = c.fg.fg3 },
    LspCodeLensSeparator = { fg = c.fg.fg4 },

    -- LSP Info Window
    LspInfoBorder = { fg = c.border.editor },

    -- LSP Inlay Hints
    LspInlayHint = { fg = c.fg.fg4, italic = true },

    -- Semantic Tokens (matches VS Code semantic tokens)
    ["@lsp.type.comment"] = { fg = c.syntax.comment, italic = true },
    ["@lsp.type.string"] = { fg = c.syntax.string },
    ["@lsp.type.number"] = { fg = c.syntax.number },
    ["@lsp.type.regexp"] = { fg = c.syntax.regexp },
    ["@lsp.type.keyword"] = { fg = c.syntax.keyword },
    ["@lsp.type.variable"] = { fg = c.syntax.variable },
    ["@lsp.type.parameter"] = { fg = c.syntax.parameter },
    ["@lsp.type.property"] = { fg = c.syntax.variable },
    ["@lsp.type.function"] = { fg = c.syntax.func },
    ["@lsp.type.method"] = { fg = c.syntax.func },
    ["@lsp.type.type"] = { fg = c.syntax.type },
    ["@lsp.type.class"] = { fg = c.syntax.type, bold = true },
    ["@lsp.type.namespace"] = { fg = c.syntax.namespace },
    ["@lsp.type.enumMember"] = { fg = c.syntax.constant },
    ["@lsp.type.interface"] = { fg = c.syntax.type },
    ["@lsp.type.struct"] = { fg = c.syntax.type },
    ["@lsp.type.enum"] = { fg = c.syntax.type },
    ["@lsp.type.typeParameter"] = { fg = c.syntax.type, italic = true },
    ["@lsp.type.decorator"] = { fg = c.syntax.decorator },
    ["@lsp.type.macro"] = { fg = c.syntax.decorator },
    ["@lsp.type.event"] = { fg = c.syntax.func },
    ["@lsp.type.modifier"] = { fg = c.syntax.keyword },
    ["@lsp.type.operator"] = { fg = c.syntax.operator },

    -- Semantic token modifiers
    ["@lsp.mod.declaration"] = {},
    ["@lsp.mod.definition"] = {},
    ["@lsp.mod.readonly"] = {},
    ["@lsp.mod.static"] = {},
    ["@lsp.mod.deprecated"] = { strikethrough = true },
    ["@lsp.mod.abstract"] = { italic = true },
    ["@lsp.mod.async"] = {},
    ["@lsp.mod.modification"] = {},
    ["@lsp.mod.documentation"] = {},
    ["@lsp.mod.defaultLibrary"] = { fg = c.syntax.namespace },

    -- Combined type.modifier patterns
    ["@lsp.typemod.variable.constant"] = { fg = c.syntax.constant, bold = true },
    ["@lsp.typemod.variable.defaultLibrary"] = { fg = c.syntax.namespace },
    ["@lsp.typemod.function.defaultLibrary"] = { fg = c.syntax.func },
    ["@lsp.typemod.method.defaultLibrary"] = { fg = c.syntax.func },
    ["@lsp.typemod.class.defaultLibrary"] = { fg = c.syntax.type, bold = true },
    ["@lsp.typemod.type.defaultLibrary"] = { fg = c.syntax.type },
    ["@lsp.typemod.variable.readonly"] = { fg = c.syntax.constant, bold = true },
    ["@lsp.typemod.property.readonly"] = { fg = c.syntax.constant, bold = true },
    ["@lsp.typemod.parameter.declaration"] = { fg = c.syntax.parameter, italic = true },
  }
end

return M
