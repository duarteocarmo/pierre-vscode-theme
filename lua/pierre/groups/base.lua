-- Base Neovim highlight groups
local M = {}

function M.get(c)
  return {
    -- Editor
    Normal = { fg = c.fg.base, bg = c.bg.editor },
    NormalFloat = { fg = c.fg.base, bg = c.bg.elevated },
    NormalNC = { fg = c.fg.fg2, bg = c.bg.editor },
    FloatBorder = { fg = c.border.elevated, bg = c.bg.elevated },
    FloatTitle = { fg = c.accent.primary, bg = c.bg.elevated, bold = true },
    Cursor = { fg = c.bg.editor, bg = c.accent.primary },
    CursorLine = { bg = c.accent.subtle },
    CursorLineNr = { fg = c.accent.primary, bold = true },
    CursorColumn = { bg = c.accent.subtle },
    ColorColumn = { bg = c.bg.inset },
    LineNr = { fg = c.fg.fg3 },
    SignColumn = { fg = c.fg.fg3, bg = c.bg.editor },
    FoldColumn = { fg = c.fg.fg4, bg = c.bg.editor },
    Folded = { fg = c.fg.fg2, bg = c.bg.inset, italic = true },
    VertSplit = { fg = c.border.window },
    WinSeparator = { fg = c.border.window },
    Conceal = { fg = c.fg.fg3 },
    NonText = { fg = c.fg.fg4 },
    SpecialKey = { fg = c.syntax.escape },
    Whitespace = { fg = c.border.indent_guide },
    EndOfBuffer = { fg = c.bg.editor },
    MatchParen = { bg = c.accent.subtle, bold = true },

    -- Menus
    Pmenu = { fg = c.fg.base, bg = c.bg.elevated },
    PmenuSel = { fg = c.fg.base, bg = c.accent.subtle },
    PmenuSbar = { bg = c.bg.inset },
    PmenuThumb = { bg = c.fg.fg4 },
    WildMenu = { fg = c.fg.base, bg = c.accent.subtle },

    -- Search & Visual
    Search = { fg = c.accent.contrast_on_accent, bg = c.accent.primary },
    IncSearch = { fg = c.accent.contrast_on_accent, bg = c.accent.primary },
    CurSearch = { fg = c.accent.contrast_on_accent, bg = c.accent.primary },
    Substitute = { fg = c.accent.contrast_on_accent, bg = c.states.danger },
    Visual = { bg = c.accent.subtle },
    VisualNOS = { bg = c.accent.subtle },

    -- Status line
    StatusLine = { fg = c.fg.fg2, bg = c.bg.window },
    StatusLineNC = { fg = c.fg.fg3, bg = c.bg.window },
    TabLine = { fg = c.fg.fg3, bg = c.bg.window },
    TabLineFill = { bg = c.bg.window },
    TabLineSel = { fg = c.fg.base, bg = c.bg.editor },
    WinBar = { fg = c.fg.fg2, bg = c.bg.editor },
    WinBarNC = { fg = c.fg.fg3, bg = c.bg.editor },

    -- Messages
    ModeMsg = { fg = c.fg.base, bold = true },
    MsgArea = { fg = c.fg.base },
    MsgSeparator = { fg = c.border.window },
    MoreMsg = { fg = c.states.info },
    Question = { fg = c.states.info },
    WarningMsg = { fg = c.states.warn },
    ErrorMsg = { fg = c.states.danger },

    -- Spelling
    SpellBad = { sp = c.states.danger, undercurl = true },
    SpellCap = { sp = c.states.warn, undercurl = true },
    SpellLocal = { sp = c.states.info, undercurl = true },
    SpellRare = { sp = c.states.info, undercurl = true },

    -- Diff
    DiffAdd = { bg = c.diff.add },
    DiffChange = { bg = c.diff.change },
    DiffDelete = { bg = c.diff.delete },
    DiffText = { bg = c.diff.text },
    diffAdded = { fg = c.states.success },
    diffRemoved = { fg = c.states.danger },
    diffChanged = { fg = c.accent.primary },
    diffOldFile = { fg = c.states.danger },
    diffNewFile = { fg = c.states.success },
    diffFile = { fg = c.accent.primary },
    diffLine = { fg = c.fg.fg3 },
    diffIndexLine = { fg = c.syntax.namespace },

    -- Directory
    Directory = { fg = c.accent.primary },
    Title = { fg = c.syntax.tag, bold = true },

    -- Standard syntax groups (fallback for non-treesitter)
    Comment = { fg = c.syntax.comment, italic = true },
    Constant = { fg = c.syntax.constant, bold = true },
    String = { fg = c.syntax.string },
    Character = { fg = c.syntax.string },
    Number = { fg = c.syntax.number },
    Boolean = { fg = c.syntax.number, bold = true },
    Float = { fg = c.syntax.number },
    Identifier = { fg = c.syntax.variable },
    Function = { fg = c.syntax.func },
    Statement = { fg = c.syntax.keyword },
    Conditional = { fg = c.syntax.keyword },
    Repeat = { fg = c.syntax.keyword },
    Label = { fg = c.syntax.keyword },
    Operator = { fg = c.syntax.operator },
    Keyword = { fg = c.syntax.keyword },
    Exception = { fg = c.syntax.keyword },
    PreProc = { fg = c.syntax.decorator },
    Include = { fg = c.syntax.keyword },
    Define = { fg = c.syntax.decorator },
    Macro = { fg = c.syntax.decorator },
    PreCondit = { fg = c.syntax.keyword },
    Type = { fg = c.syntax.type },
    StorageClass = { fg = c.syntax.keyword },
    Structure = { fg = c.syntax.type },
    Typedef = { fg = c.syntax.type },
    Special = { fg = c.syntax.escape },
    SpecialChar = { fg = c.syntax.escape },
    Tag = { fg = c.syntax.tag },
    Delimiter = { fg = c.syntax.punctuation },
    SpecialComment = { fg = c.syntax.comment, bold = true },
    Debug = { fg = c.states.warn },
    Underlined = { fg = c.accent.link, underline = true },
    Ignore = { fg = c.fg.fg4 },
    Error = { fg = c.states.danger, bold = true },
    Todo = { fg = c.states.info, bold = true },

    -- Quickfix
    QuickFixLine = { bg = c.accent.subtle },
    qfFileName = { fg = c.accent.primary },
    qfLineNr = { fg = c.fg.fg3 },

    -- Help
    helpHyperTextJump = { fg = c.accent.link, underline = true },
  }
end

return M
