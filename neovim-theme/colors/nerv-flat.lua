-- NERV Theme for Neovim (Flat Variation)
-- A dark theme inspired by 80s/90s cyberpunk interfaces and Evangelion's NERV headquarters
-- Created by Jane Manchun Wong (https://wongmjane.com)

vim.cmd('hi clear')
if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.o.background = 'dark'
vim.g.colors_name = 'nerv-flat'

-- Color Palette
local colors = {
  -- Base colors
  bg = '#0a1612',              -- Deep sea darkness
  bg_elevated = '#0f1f1a',     -- Elevated surfaces
  bg_highlight = '#1a2e28',    -- Hover/highlight backgrounds

  fg = '#8fb3a5',              -- Muted sage foreground
  fg_bright = '#a8d3c5',       -- Bright foreground
  fg_muted = '#5a7a6d',        -- Muted text
  fg_dim = '#4a6a5d',          -- Dimmed text
  fg_disabled = '#3a5a4d',     -- Disabled text

  -- Accents
  accent = '#e85d04',          -- Signal orange
  accent_hover = '#f4820b',    -- Brighter orange

  -- Borders and separators
  border = '#0a1612',          -- Primary border (Flat: matches background)
  border_variant = '#0f1f1a',  -- Subtle border

  -- Syntax colors
  keyword = '#e85d04',         -- Keywords (orange)
  string = '#4a8c5c',          -- Strings (organic green)
  string_escape = '#659d74',   -- String escapes (brighter green)
  number = '#d4a017',          -- Numbers (gold)
  boolean = '#d4a017',         -- Booleans (gold)
  constant = '#5a9a8c',        -- Constants (cyan)
  func = '#8a5a8a',            -- Functions (subdued purple)
  type = '#3a7a8c',            -- Types (industrial teal)
  property = '#c97a4a',        -- Properties (terracotta)
  operator = '#5a7a6d',        -- Operators (muted)
  punctuation = '#5a7a6d',     -- Punctuation (muted)
  bracket = '#8e8e93',         -- Brackets (gray)
  comment = '#4a6a5d',         -- Comments (dark muted)
  comment_doc = '#5a7a6d',     -- Doc comments (lighter muted)
  tag = '#e85d04',             -- HTML/XML tags (orange)
  attribute = '#5a9a8c',       -- HTML/XML attributes (cyan)
  regex = '#c92a2a',           -- Regular expressions (red)

  -- Diagnostics
  error = '#c92a2a',           -- Errors (red)
  warning = '#d4a017',         -- Warnings (gold)
  info = '#3a7a8c',            -- Info (teal)
  hint = '#5a7a6d',            -- Hints (muted)

  -- Git
  git_add = '#4a8c5c',         -- Added lines (green)
  git_change = '#d4a017',      -- Changed lines (gold)
  git_delete = '#c92a2a',      -- Deleted lines (red)
  git_text = '#5a9a8c',        -- Git text (cyan)

  -- Selection and search
  selection = '#e85d0433',     -- Selection background
  search = '#d4a01740',        -- Search match background
  visual = '#e85d0450',        -- Visual mode selection
  cursor = '#e85d04',          -- Cursor color
  cursorline = '#0f1f1a',      -- Current line background

  -- UI elements
  pmenu_bg = '#0f1f1a',        -- Popup menu background
  pmenu_sel = '#e85d04',       -- Popup menu selection
  statusline = '#0a1612',      -- Statusline background

  none = 'NONE',
}

-- Helper function to set highlights
local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor UI
hl('Normal', { fg = colors.fg, bg = colors.bg })
hl('NormalFloat', { fg = colors.fg, bg = colors.bg_elevated })
hl('FloatBorder', { fg = colors.border, bg = colors.bg_elevated })
hl('ColorColumn', { bg = colors.bg_elevated })
hl('Cursor', { fg = colors.bg, bg = colors.cursor })
hl('CursorLine', { bg = colors.cursorline })
hl('CursorColumn', { bg = colors.cursorline })
hl('CursorLineNr', { fg = colors.fg, bold = true })
hl('LineNr', { fg = colors.fg_dim })
hl('SignColumn', { fg = colors.fg_dim, bg = colors.bg })
hl('VertSplit', { fg = colors.border })
hl('WinSeparator', { fg = colors.border })
hl('Folded', { fg = colors.fg_muted, bg = colors.bg_elevated })
hl('FoldColumn', { fg = colors.fg_dim, bg = colors.bg })
hl('MatchParen', { fg = colors.accent, bg = colors.selection, bold = true })
hl('Visual', { bg = colors.visual })
hl('VisualNOS', { bg = colors.visual })
hl('Search', { bg = colors.search })
hl('IncSearch', { fg = colors.bg, bg = colors.accent })
hl('CurSearch', { fg = colors.bg, bg = colors.accent })
hl('Substitute', { fg = colors.bg, bg = colors.accent })
hl('Pmenu', { fg = colors.fg, bg = colors.pmenu_bg })
hl('PmenuSel', { fg = colors.bg, bg = colors.pmenu_sel })
hl('PmenuSbar', { bg = colors.bg_elevated })
hl('PmenuThumb', { bg = colors.border })
hl('Question', { fg = colors.git_add })
hl('QuickFixLine', { fg = colors.accent, bold = true })
hl('SpecialKey', { fg = colors.fg_disabled })
hl('NonText', { fg = colors.fg_disabled })
hl('Whitespace', { fg = colors.fg_disabled })
hl('EndOfBuffer', { fg = colors.fg_disabled })
hl('Directory', { fg = colors.type })
hl('Title', { fg = colors.fg, bold = true })
hl('ErrorMsg', { fg = colors.error })
hl('WarningMsg', { fg = colors.warning })
hl('MoreMsg', { fg = colors.git_add })
hl('ModeMsg', { fg = colors.fg_muted })
hl('StatusLine', { fg = colors.fg, bg = colors.statusline })
hl('StatusLineNC', { fg = colors.fg_muted, bg = colors.statusline })
hl('TabLine', { fg = colors.fg_muted, bg = colors.bg })
hl('TabLineFill', { bg = colors.bg })
hl('TabLineSel', { fg = colors.fg, bg = colors.bg_elevated })
hl('WildMenu', { fg = colors.bg, bg = colors.accent })

-- Syntax Highlighting (Standard)
hl('Comment', { fg = colors.comment, italic = true })
hl('Constant', { fg = colors.constant })
hl('String', { fg = colors.string })
hl('Character', { fg = colors.string })
hl('Number', { fg = colors.number })
hl('Boolean', { fg = colors.boolean })
hl('Float', { fg = colors.number })
hl('Identifier', { fg = colors.fg })
hl('Function', { fg = colors.func })
hl('Statement', { fg = colors.keyword })
hl('Conditional', { fg = colors.keyword })
hl('Repeat', { fg = colors.keyword })
hl('Label', { fg = colors.keyword })
hl('Operator', { fg = colors.operator })
hl('Keyword', { fg = colors.keyword })
hl('Exception', { fg = colors.keyword })
hl('PreProc', { fg = colors.keyword })
hl('Include', { fg = colors.keyword })
hl('Define', { fg = colors.keyword })
hl('Macro', { fg = colors.func })
hl('PreCondit', { fg = colors.keyword })
hl('Type', { fg = colors.type })
hl('StorageClass', { fg = colors.keyword })
hl('Structure', { fg = colors.type })
hl('Typedef', { fg = colors.type })
hl('Special', { fg = colors.accent })
hl('SpecialChar', { fg = colors.string_escape })
hl('Tag', { fg = colors.tag })
hl('Delimiter', { fg = colors.punctuation })
hl('SpecialComment', { fg = colors.comment_doc, italic = true })
hl('Debug', { fg = colors.error })
hl('Underlined', { fg = colors.accent, underline = true })
hl('Ignore', { fg = colors.fg_disabled })
hl('Error', { fg = colors.error })
hl('Todo', { fg = colors.warning, bold = true })

-- Treesitter Syntax
hl('@annotation', { link = 'PreProc' })
hl('@attribute', { fg = colors.attribute })
hl('@boolean', { link = 'Boolean' })
hl('@character', { link = 'Character' })
hl('@comment', { link = 'Comment' })
hl('@conditional', { link = 'Conditional' })
hl('@constant', { link = 'Constant' })
hl('@constant.builtin', { link = 'Constant' })
hl('@constant.macro', { link = 'Constant' })
hl('@constructor', { fg = colors.keyword })
hl('@error', { link = 'Error' })
hl('@exception', { link = 'Exception' })
hl('@field', { fg = colors.property })
hl('@float', { link = 'Float' })
hl('@function', { link = 'Function' })
hl('@function.builtin', { link = 'Function' })
hl('@function.macro', { link = 'Macro' })
hl('@include', { link = 'Include' })
hl('@keyword', { link = 'Keyword' })
hl('@keyword.function', { link = 'Keyword' })
hl('@keyword.operator', { link = 'Keyword' })
hl('@keyword.return', { link = 'Keyword' })
hl('@label', { link = 'Label' })
hl('@method', { link = 'Function' })
hl('@namespace', { fg = colors.type })
hl('@number', { link = 'Number' })
hl('@operator', { link = 'Operator' })
hl('@parameter', { fg = colors.fg })
hl('@parameter.reference', { fg = colors.fg })
hl('@property', { fg = colors.property })
hl('@punctuation.delimiter', { fg = colors.punctuation })
hl('@punctuation.bracket', { fg = colors.bracket })
hl('@punctuation.special', { fg = colors.punctuation })
hl('@repeat', { link = 'Repeat' })
hl('@string', { link = 'String' })
hl('@string.escape', { fg = colors.string_escape })
hl('@string.regex', { fg = colors.regex })
hl('@string.special', { link = 'SpecialChar' })
hl('@symbol', { fg = colors.constant })
hl('@tag', { link = 'Tag' })
hl('@tag.attribute', { fg = colors.attribute })
hl('@tag.delimiter', { fg = colors.punctuation })
hl('@text', { fg = colors.fg })
hl('@text.strong', { bold = true })
hl('@text.emphasis', { italic = true })
hl('@text.underline', { underline = true })
hl('@text.strike', { strikethrough = true })
hl('@text.title', { fg = colors.fg, bold = true })
hl('@text.literal', { fg = colors.string })
hl('@text.uri', { fg = colors.accent, underline = true })
hl('@text.reference', { fg = colors.constant })
hl('@type', { link = 'Type' })
hl('@type.builtin', { link = 'Type' })
hl('@variable', { fg = colors.fg })
hl('@variable.builtin', { fg = colors.keyword })

-- LSP Semantic Tokens
hl('@lsp.type.namespace', { link = '@namespace' })
hl('@lsp.type.type', { link = '@type' })
hl('@lsp.type.class', { link = '@type' })
hl('@lsp.type.enum', { link = '@type' })
hl('@lsp.type.interface', { link = '@type' })
hl('@lsp.type.struct', { link = '@type' })
hl('@lsp.type.parameter', { link = '@parameter' })
hl('@lsp.type.variable', { link = '@variable' })
hl('@lsp.type.property', { link = '@property' })
hl('@lsp.type.enumMember', { link = '@constant' })
hl('@lsp.type.function', { link = '@function' })
hl('@lsp.type.method', { link = '@method' })
hl('@lsp.type.macro', { link = '@macro' })
hl('@lsp.type.decorator', { link = '@function' })

-- LSP Diagnostics
hl('DiagnosticError', { fg = colors.error })
hl('DiagnosticWarn', { fg = colors.warning })
hl('DiagnosticInfo', { fg = colors.info })
hl('DiagnosticHint', { fg = colors.hint })
hl('DiagnosticUnderlineError', { undercurl = true, sp = colors.error })
hl('DiagnosticUnderlineWarn', { undercurl = true, sp = colors.warning })
hl('DiagnosticUnderlineInfo', { undercurl = true, sp = colors.info })
hl('DiagnosticUnderlineHint', { undercurl = true, sp = colors.hint })
hl('DiagnosticVirtualTextError', { fg = colors.error, bg = colors.none })
hl('DiagnosticVirtualTextWarn', { fg = colors.warning, bg = colors.none })
hl('DiagnosticVirtualTextInfo', { fg = colors.info, bg = colors.none })
hl('DiagnosticVirtualTextHint', { fg = colors.hint, bg = colors.none })
hl('DiagnosticSignError', { fg = colors.error })
hl('DiagnosticSignWarn', { fg = colors.warning })
hl('DiagnosticSignInfo', { fg = colors.info })
hl('DiagnosticSignHint', { fg = colors.hint })
hl('LspReferenceText', { bg = colors.selection })
hl('LspReferenceRead', { bg = colors.selection })
hl('LspReferenceWrite', { bg = colors.selection })
hl('LspSignatureActiveParameter', { fg = colors.accent, bold = true })

-- Git Signs
hl('GitSignsAdd', { fg = colors.git_add })
hl('GitSignsChange', { fg = colors.git_change })
hl('GitSignsDelete', { fg = colors.git_delete })
hl('GitSignsAddNr', { fg = colors.git_add })
hl('GitSignsChangeNr', { fg = colors.git_change })
hl('GitSignsDeleteNr', { fg = colors.git_delete })
hl('GitSignsAddLn', { bg = '#4a8c5c21' })
hl('GitSignsChangeLn', { bg = '#d4a01721' })
hl('GitSignsDeleteLn', { bg = '#c92a2a21' })

-- Diff
hl('DiffAdd', { fg = colors.none, bg = '#4a8c5c21' })
hl('DiffChange', { fg = colors.none, bg = '#d4a01721' })
hl('DiffDelete', { fg = colors.git_delete, bg = '#c92a2a21' })
hl('DiffText', { fg = colors.none, bg = '#d4a01733' })

-- Telescope
hl('TelescopeBorder', { fg = colors.border, bg = colors.bg_elevated })
hl('TelescopeNormal', { fg = colors.fg, bg = colors.bg_elevated })
hl('TelescopeSelection', { fg = colors.bg, bg = colors.accent })
hl('TelescopeSelectionCaret', { fg = colors.accent })
hl('TelescopeMultiSelection', { fg = colors.accent })
hl('TelescopeMatching', { fg = colors.accent_hover, bold = true })
hl('TelescopePromptPrefix', { fg = colors.accent })

-- NvimTree
hl('NvimTreeNormal', { fg = colors.fg, bg = colors.bg })
hl('NvimTreeRootFolder', { fg = colors.accent, bold = true })
hl('NvimTreeFolderName', { fg = colors.type })
hl('NvimTreeFolderIcon', { fg = colors.type })
hl('NvimTreeEmptyFolderName', { fg = colors.fg_muted })
hl('NvimTreeOpenedFolderName', { fg = colors.type, bold = true })
hl('NvimTreeIndentMarker', { fg = colors.border })
hl('NvimTreeGitDirty', { fg = colors.git_change })
hl('NvimTreeGitStaged', { fg = colors.git_add })
hl('NvimTreeGitMerge', { fg = colors.warning })
hl('NvimTreeGitRenamed', { fg = colors.git_text })
hl('NvimTreeGitNew', { fg = colors.git_add })
hl('NvimTreeGitDeleted', { fg = colors.git_delete })
hl('NvimTreeSpecialFile', { fg = colors.accent, underline = true })

-- Neo-tree
hl('NeoTreeNormal', { fg = colors.fg, bg = colors.bg })
hl('NeoTreeNormalNC', { fg = colors.fg, bg = colors.bg })
hl('NeoTreeDirectoryName', { fg = colors.type })
hl('NeoTreeDirectoryIcon', { fg = colors.type })
hl('NeoTreeFileName', { fg = colors.fg })
hl('NeoTreeFileIcon', { fg = colors.fg_muted })
hl('NeoTreeGitAdded', { fg = colors.git_add })
hl('NeoTreeGitModified', { fg = colors.git_change })
hl('NeoTreeGitDeleted', { fg = colors.git_delete })
hl('NeoTreeGitConflict', { fg = colors.warning })
hl('NeoTreeGitUntracked', { fg = colors.git_text })
hl('NeoTreeIndentMarker', { fg = colors.border })
hl('NeoTreeRootName', { fg = colors.accent, bold = true })

-- Bufferline
hl('BufferLineBackground', { fg = colors.fg_muted, bg = colors.bg })
hl('BufferLineBuffer', { fg = colors.fg_muted, bg = colors.bg })
hl('BufferLineBufferSelected', { fg = colors.fg, bg = colors.bg_elevated, bold = true })
hl('BufferLineBufferVisible', { fg = colors.fg_muted, bg = colors.bg })
hl('BufferLineTab', { fg = colors.fg_muted, bg = colors.bg })
hl('BufferLineTabSelected', { fg = colors.fg, bg = colors.bg_elevated })
hl('BufferLineTabClose', { fg = colors.error, bg = colors.bg })
hl('BufferLineFill', { bg = colors.bg })
hl('BufferLineIndicatorSelected', { fg = colors.accent, bg = colors.bg_elevated })
hl('BufferLineModified', { fg = colors.git_change, bg = colors.bg })
hl('BufferLineModifiedSelected', { fg = colors.git_change, bg = colors.bg_elevated })

-- Lualine
hl('lualine_a_normal', { fg = colors.bg, bg = colors.accent, bold = true })
hl('lualine_b_normal', { fg = colors.fg, bg = colors.bg_elevated })
hl('lualine_c_normal', { fg = colors.fg_muted, bg = colors.bg })

-- Which-key
hl('WhichKey', { fg = colors.accent })
hl('WhichKeyGroup', { fg = colors.type })
hl('WhichKeyDesc', { fg = colors.fg })
hl('WhichKeySeparator', { fg = colors.fg_muted })
hl('WhichKeyFloat', { bg = colors.bg_elevated })
hl('WhichKeyBorder', { fg = colors.border })

-- Indent Blankline
hl('IndentBlanklineChar', { fg = colors.border, nocombine = true })
hl('IndentBlanklineContextChar', { fg = colors.fg_dim, nocombine = true })

-- Notify
hl('NotifyERRORBorder', { fg = colors.error })
hl('NotifyWARNBorder', { fg = colors.warning })
hl('NotifyINFOBorder', { fg = colors.info })
hl('NotifyDEBUGBorder', { fg = colors.hint })
hl('NotifyTRACEBorder', { fg = colors.hint })
hl('NotifyERRORIcon', { fg = colors.error })
hl('NotifyWARNIcon', { fg = colors.warning })
hl('NotifyINFOIcon', { fg = colors.info })
hl('NotifyDEBUGIcon', { fg = colors.hint })
hl('NotifyTRACEIcon', { fg = colors.hint })
hl('NotifyERRORTitle', { fg = colors.error })
hl('NotifyWARNTitle', { fg = colors.warning })
hl('NotifyINFOTitle', { fg = colors.info })
hl('NotifyDEBUGTitle', { fg = colors.hint })
hl('NotifyTRACETitle', { fg = colors.hint })

-- Markdown
hl('markdownHeadingDelimiter', { fg = colors.accent, bold = true })
hl('markdownCode', { fg = colors.string })
hl('markdownCodeBlock', { fg = colors.string })
hl('markdownH1', { fg = colors.fg, bold = true })
hl('markdownH2', { fg = colors.fg, bold = true })
hl('markdownLinkText', { fg = colors.accent, underline = true })
hl('markdownItalic', { italic = true })
hl('markdownBold', { bold = true })

-- HTML
hl('htmlTag', { fg = colors.tag })
hl('htmlEndTag', { fg = colors.tag })
hl('htmlTagName', { fg = colors.tag })
hl('htmlArg', { fg = colors.attribute })
hl('htmlSpecialChar', { fg = colors.string_escape })

-- CSS
hl('cssBraces', { fg = colors.bracket })
hl('cssClassName', { fg = colors.type })
hl('cssClassNameDot', { fg = colors.type })
hl('cssColor', { fg = colors.number })
hl('cssProp', { fg = colors.property })
hl('cssAttrComma', { fg = colors.punctuation })

-- JavaScript/TypeScript
hl('javaScriptBraces', { fg = colors.bracket })
hl('javaScriptFunction', { fg = colors.keyword })
hl('javaScriptIdentifier', { fg = colors.keyword })
hl('javaScriptNull', { fg = colors.constant })
hl('javaScriptNumber', { fg = colors.number })
hl('javaScriptRequire', { fg = colors.keyword })
hl('javaScriptReserved', { fg = colors.keyword })
hl('typescriptBraces', { fg = colors.bracket })
hl('typescriptEndColons', { fg = colors.punctuation })
hl('typescriptFunction', { fg = colors.keyword })
hl('typescriptFuncKeyword', { fg = colors.keyword })
hl('typescriptIdentifier', { fg = colors.keyword })
hl('typescriptNull', { fg = colors.constant })
hl('typescriptNumber', { fg = colors.number })

-- JSON
hl('jsonKeyword', { fg = colors.property })
hl('jsonQuote', { fg = colors.punctuation })
hl('jsonBraces', { fg = colors.bracket })
hl('jsonString', { fg = colors.string })

-- Lua
hl('luaFunction', { fg = colors.keyword })
hl('luaTable', { fg = colors.bracket })
hl('luaIn', { fg = colors.keyword })
hl('luaFuncKeyword', { fg = colors.keyword })

-- Terminal
vim.g.terminal_color_0 = colors.bg
vim.g.terminal_color_1 = '#c92a2a'
vim.g.terminal_color_2 = '#4a8c5c'
vim.g.terminal_color_3 = '#d4a017'
vim.g.terminal_color_4 = '#3a7a8c'
vim.g.terminal_color_5 = '#8a5a8a'
vim.g.terminal_color_6 = '#5a9a8c'
vim.g.terminal_color_7 = colors.fg
vim.g.terminal_color_8 = colors.fg_dim
vim.g.terminal_color_9 = colors.accent
vim.g.terminal_color_10 = '#5aac6c'
vim.g.terminal_color_11 = '#e4b027'
vim.g.terminal_color_12 = '#4a8a9c'
vim.g.terminal_color_13 = '#9a6a9a'
vim.g.terminal_color_14 = '#6aaa9c'
vim.g.terminal_color_15 = colors.fg_bright
