-- Run this to show all colors currently set.
--   :so $VIMRUNTIME/syntax/hitest.vim

-- Clear existing colors if a colorscheme is already loaded.
if vim.g.colors_name then
  vim.cmd("highlight clear")
end

vim.opt.background = 'dark'
vim.g.colors_name = 'gib-noir'

-- Colors
local c = {
  fg = "#c6c6c6",      -- Default foreground
  bg = "#000000",      -- Default background
  comment = "#808080", -- Comment text
  pmenu = {
    extra = {
      fg = "#767676",
      bg = "#3a3a3a",
    },
    kind = {
      fg = "#d7875f",
      bg = "#3a3a3a",
      selected = {
        fg = "#d75f5f",
        bg = "#afaf87",
      },
    },
  },
  fg_gutter = "#8787af",    -- Foreground for gutter text.
  fg_highlight = "#e2e2e2", -- Foreground for highlighted text.
  fg_cursearch = "#1c1c1c",
  fg_statuslinenc = "#b2b2b2",
  bg_gutter = "#2e2d2b",         -- Background for gutter text.
  bg_highlight = "#383734",      -- Highlighted text
  bg_dark_highlight = "#1f2335", -- Less highlighted text.
  bg_folded = "#242322",         -- Background of folds.
  bg_selected = "#9e9e9e",       -- selected item background
  bg_scrollbar = "#262626",      -- Popup menu scrollbar background.
  bg_visual = "#5c5c5c",
  bg_cursearch = "#afaf87",
  bg_quickfix = "#5f87af",
  non_text = "#7eaefd", -- Non-text chars like ~ after end of buffer, or trailing whitespace.
  pink = "#ff5fd7",
  search = "#ff8901",
  cursor = "#6BF549",
  constant = "#e6987a",
  match_paren = "#ff0087", -- Matching parens
  more = "#8cd991",        -- More... prompt
  question = "#75d7d8",    -- Question text.
  title = "#a080ea",
  border = "#4a4a4a",
  border_highlight = "#8cd991",
  diff = {
    add = "#062905",
    delete = "#3d0c0a",
    change = "#1d3e42",
    text = "#472346",
  },
  gutter_diff = {
    add = "#062905",
    change = "#1d3e42",
    delete = "#3d0c0a",
  },
  warning = "#A56221",
  error = "#B25E79",
  error2 = "#d96e8a",
  info = "#dbc570",
  hint = "#8cd991",
  flash_inactive = "#A56221",
}

local highlights = {
  -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
  -- groups, mostly used for styling UI elements.
  -- An empty definition `{}` will clear all styling, leaving elements looking
  -- like the 'Normal' group.
  -- To be able to link to a group, it must already be defined.
  --
  -- See `:h highlight-groups`

  ColorColumn               = { bg = c.bg_highlight },                      -- used for the columns set with 'colorcolumn'
  Conceal                   = { fg = c.dark_highlight },                    -- placeholder characters substituted for concealed text (see 'conceallevel')
  CurSearch                 = { fg = c.fg_cursearch, bg = c.bg_cursearch }, -- Used for highlighting a search pattern under the cursor (see 'hlsearch').
  Cursor                    = { fg = c.bg, bg = c.cursor },                 -- character under the cursor
  lCursor                   = { fg = c.bg, bg = c.fg_highlight, },
  CursorIM                  = { link = "Cursor" },                          -- like Cursor, but used when in IME mode |CursorIM|
  CursorColumn              = { bg = c.bg_highlight },                      -- Screen-column at the cursor, when 'cursorcolumn' is set.
  CursorLine                = { link = "CursorColumn" },                    -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
  Directory                 = { fg = c.constant },                          -- directory names (and other special names in listings)
  DiffAdd                   = { bg = c.diff.add },                          -- diff mode: Added line |diff.txt| (no fg to preserve syntax highlighting in diff blocks)
  DiffChange                = { bg = c.diff.change },                       -- diff mode: Unchanged text within a changed line |diff.txt|
  DiffDelete                = { bg = c.diff.delete },                       -- diff mode: Deleted line |diff.txt|
  DiffText                  = { bg = c.diff.text },                         -- diff mode: Changed text within a changed line |diff.txt|
  EndOfBuffer               = { fg = c.non_text },                          -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
  -- TermCursor  = { link = "Cursor" }, -- cursor in a focused terminal
  -- TermCursorNC= {  link = "Cursor" }, -- cursor in an unfocused terminal
  ErrorMsg                  = { fg = c.error, italic = true },                           -- error messages on the command line and LanguageClient inline messages.
  WinSeparator              = { fg = c.border, bg = c.border },                          -- the column separating vertically split windows
  Folded                    = { fg = c.fg_gutter, bg = c.bg_folded },                    -- line used for closed folds
  FoldColumn                = { link = "Folded" },                                       -- 'foldcolumn'
  SignColumn                = { fg = c.comment, bg = c.bg_gutter },                      -- column where |signs| are displayed
  IncSearch                 = { fg = c.bg, bg = c.pink },                                -- 'incsearch' highlighting (Next match of text you're searching for as you type the search term) also used for the text replaced with ":s///c"
  Substitute                = { fg = c.search, bold = true },                            -- |:substitute| replacement text highlighting
  LineNr                    = { fg = c.comment, bg = c.folded },                         -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
  LineNrAbove               = { link = "LineNr" },                                       -- Line number for when the 'relativenumber' option is set, above the cursor line
  LineNrBelow               = { link = "LineNr" },                                       -- Line number for when the 'relativenumber' option is set, below the cursor line
  CursorLineNr              = { fg = c.fg_highlight, bg = c.bg_highlight, bold = true }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
  CursorLineFold            = { link = "FoldColumn" },                                   -- Like FoldColumn when 'cursorline' is set for the cursor line
  CursorLineSign            = { link = "SignColumn" },                                   -- Like SignColumn when 'cursorline' is set for the cursor line
  MatchParen                = { fg = c.fg, bg = c.match_paren, bold = true },            -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
  ModeMsg                   = { fg = c.fg_highlight, bold = true },                      -- 'showmode' message (e.g., "-- INSERT -- ")
  -- MsgArea = { }, -- Area for messages and cmdline
  MsgSeparator              = { fg = c.bg, bg = c.selected },                            -- Separator for scrolled messages, `msgsep` flag of 'display'
  MoreMsg                   = { fg = c.more, bold = true },                              -- |more-prompt|
  NonText                   = { link = "EndOfBuffer" },                                  -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
  Normal                    = { fg = c.fg, bg = c.bg },                                  -- Normal text (and default background color).
  NormalFloat               = { link = "Pmenu" },                                        -- Normal text in floating windows.
  FloatBorder               = { link = "WinSeparator" },
  FloatTitle                = { fg = c.title, bold = true },
  -- FloatFooter = { }, -- Footer of floating windows.
  NormalNC                  = { link = "Normal" },                                              -- normal text in non-current windows
  NormalSB                  = { fg = c.fg_sidebar, bg = c.bg_sidebar },                         -- normal text in sidebar
  Pmenu                     = { fg = c.fg, bg = c.bg_folded },                                  -- Popup menu: normal item.
  PmenuSel                  = { fg = c.bg, bg = c.bg_selected },                                -- Popup menu: selected item. Buftabline active (buffers open in a different split for multiple splits).
  PmenuKind                 = { fg = c.pmenu.kind.fg, bg = c.pmenu.kind.bg },                   -- Popup menu: Normal item "kind"
  PmenuKindSel              = { fg = c.pmenu.kind.selected.fg, bg = c.pmenu.kind.selected.bg }, -- Popup menu: Selected item "kind"
  PmenuExtra                = { fg = c.pmenu.extra.fg, bg = c.pmenu.extra.bg },                 -- Popup menu: Normal item "extra text"
  -- PmenuExtraSel = { }, -- Popup menu: Selected item "extra text"
  PmenuSbar                 = { fg = c.pink, bg = c.bg_scrollbar },                             -- Popup menu: scrollbar.
  PmenuThumb                = { fg = c.bg_gutter, bg = c.pink },                                -- Popup menu: Thumb of the scrollbar.
  Question                  = { fg = c.question, bold = true },                                 -- |hit-enter| prompt and yes/no questions
  QuickFixLine              = { fg = c.fg_cursearch, bg = c.bg_quickfix },                      -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
  Search                    = { fg = c.search, bold = true },                                   -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
  SpecialKey                = { fg = c.non_text },                                              -- Unprintable characters: Text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
  SpellBad                  = { sp = c.error2, undercurl = true },                              -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
  SpellCap                  = { sp = c.warning, undercurl = true },                             -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
  SpellLocal                = { sp = c.info, undercurl = true },                                -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
  SpellRare                 = { sp = c.hint, undercurl = true },                                -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
  StatusLine                = { fg = c.bg, bg = c.bg_selected },                                -- Status line of current window.
  StatusLineNC              = { fg = c.fg_statuslinenc, bg = c.border },                        -- Status lines of not-current windows.
  TabLine                   = { fg = c.comment, bg = c.bg_folded },                             --  = { }, -- Tab pages line, not active tab page label.
  TabLineFill               = { link = "TabLine" },                                             -- Tab pages line, where there are no labels.
  TabLineSel                = { fg = c.bg, bg = c.non_text, bold = true },                      -- Tab pages line, active tab page label.
  Title                     = { fg = c.title, bold = true },                                    --  = { }, -- Titles for output from ":set all", ":autocmd" etc.
  Visual                    = { fg = c.fg_highlight, bg = c.bg_visual },                        --  = { }, -- Visual mode selection.
  VisualNOS                 = { fg = c.fg_highlight, underline = true },                        -- Visual mode selection when vim is "Not Owning the Selection".
  WarningMsg                = { fg = c.warning, italic = true },                                -- Warning messages.
  Whitespace                = { link = "NonText" },                                             -- "nbsp", "space", "tab", "multispace", "lead" and "trail" in 'listchars'.
  WildMenu                  = { fg = c.bg, bg = c.question },                                   -- Current match in 'wildmenu' completion (:command mode tab-completion).
  WinBar                    = { bold = true },                                                  -- Window bar of current window.
  WinBarNC                  = { link = "WindBar" },                                             -- Window bar of not-current windows.
  -- TODO: no longer present in latest neovim
  VertSplit                 = { fg = c.border, bg = c.border },                                 -- the column separating vertically split windows
  -- Common vim syntax groups used for all kinds of code and markup.
  -- Commented-out groups should chain up to their preferred (*) group
  -- by default.
  --
  -- See :h group-name
  --
  -- Uncomment and edit if you want more specific syntax highlighting.

  Comment                   = { fg = c.comment, italic = true }, -- Any comment
  Constant                  = { fg = "#e6987a", italic = true }, -- (*) Any constant
  String                    = { fg = "#ad8788", italic = true }, --   A string constant: "this is a string"
  -- Character = { }, --   A character constant: 'c', '\n'
  Number                    = { fg = "#dbc570" },                --   A number constant: 234, 0xff
  -- Boolean   = { }, --   A boolean constant: TRUE, false
  -- Float     = { }, --   A floating point constant: 2.3e10

  Identifier                = { fg = "#75d7d8" },             -- (*) Any variable name
  Function                  = { fg = "#88da77" },             --   Function name (also: methods for classes)
  Statement                 = { fg = c.error2, bold = true }, -- (*) Any statement
  -- Conditional  = { }, --   if, then, else, endif, switch, etc.
  -- Repeat       = { }, --   for, do, while, etc.
  -- Label        = { }, --   case, default, etc.
  -- Operator     = { }, --   "sizeof", "+", "*", etc.
  Keyword                   = { fg = c.error2, bold = true }, --   any other keyword
  -- Exception    = { }, --   try, catch, throw

  PreProc                   = { fg = "#dbc570" }, -- (*) Generic Preprocessor
  -- Include      = { }, --   Preprocessor #include
  -- Define       = { }, --   Preprocessor #define
  -- Macro        = { }, --   Same as Define
  -- PreCondit    = { }, --   Preprocessor #if, #else, #endif, etc.

  Type                      = { fg = "#a080ea", bold = true }, -- (*) int, long, char, etc.
  -- StorageClass = { }, --   static, register, volatile, etc.
  -- Structure    = { }, --   struct, union, enum, etc.
  -- Typedef      = { }, --   A typedef

  Special                   = { fg = "#ce6bd0" }, -- (*) Any special symbol
  -- SpecialChar  = { }, --   Special character in a constant
  -- Tag          = { }, --   You can use CTRL-] on this
  -- Delimiter    = { }, --   Character that needs attention
  -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
  -- Debug        = { }, --   Debugging statements

  Underlined                = { fg = c.non_text, underline = true }, -- Text that stands out, HTML links
  -- Ignore       = { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
  Error                     = { fg = c.error2, bold = true },        -- Any erroneous construct (and LanguageClient errors)
  Todo                      = { fg = "#75d7d8", bold = true },       -- Anything that needs extra attention (and LanguageClient warnings); mostly the keywords TODO FIXME and XXX
  -- These groups are for the native LSP client and diagnostic system. Some
  -- other LSP clients may use these groups, or use their own. Consult your
  -- LSP client's documentation.

  -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
  --
  -- LspReferenceText            { } , -- Used for highlighting "text" references
  -- LspReferenceRead            { } , -- Used for highlighting "read" references
  -- LspReferenceWrite           { } , -- Used for highlighting "write" references
  -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
  -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
  -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

  -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
  --
  -- DiagnosticError            { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
  -- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
  -- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
  -- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
  -- DiagnosticOk               { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
  -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
  -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
  -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
  -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
  -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
  -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
  -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
  -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
  -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
  -- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
  -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
  -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
  -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
  -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
  -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
  -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
  -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
  -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
  -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
  -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

  -- Tree-Sitter syntax groups.
  --
  -- See :h treesitter-highlight-groups, some groups may not be listed,
  -- submit a PR fix to lush-template!
  --
  -- Tree-Sitter groups are defined with an "@" symbol, which must be
  -- specially handled to be valid lua code, we do this via the special
  -- sym function. The following are all valid ways to call the sym function,
  -- for more details see https://www.lua.org/pil/5.html
  --
  -- sym("@text.literal")
  -- sym('@text.literal')
  -- sym"@text.literal"
  -- sym'@text.literal'
  --
  -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

  -- sym("@text.literal")      { }, -- Comment
  -- sym("@text.reference")    { }, -- Identifier
  -- sym("@text.title")        { }, -- Title
  -- sym("@text.uri")          { }, -- Underlined
  -- sym("@text.underline")    { }, -- Underlined
  -- sym("@text.todo")         { }, -- Todo
  -- sym("@comment")           { }, -- Comment
  -- sym("@punctuation")       { }, -- Delimiter
  -- sym("@constant")          { }, -- Constant
  -- sym("@constant.builtin")  { }, -- Special
  -- sym("@constant.macro")    { }, -- Define
  -- sym("@define")            { }, -- Define
  -- sym("@macro")             { }, -- Macro
  -- sym("@string")            { }, -- String
  -- sym("@string.escape")     { }, -- SpecialChar
  -- sym("@string.special")    { }, -- SpecialChar
  -- sym("@character")         { }, -- Character
  -- sym("@character.special") { }, -- SpecialChar
  -- sym("@number")            { }, -- Number
  -- sym("@boolean")           { }, -- Boolean
  -- sym("@float")             { }, -- Float
  -- sym("@function")          { }, -- Function
  -- sym("@function.builtin")  { }, -- Special
  -- sym("@function.macro")    { }, -- Macro
  -- sym("@parameter")         { }, -- Identifier
  -- sym("@method")            { }, -- Function
  -- sym("@field")             { }, -- Identifier
  -- sym("@property")          { }, -- Identifier
  -- sym("@constructor")       { }, -- Special
  -- sym("@conditional")       { }, -- Conditional
  -- sym("@repeat")            { }, -- Repeat
  -- sym("@label")             { }, -- Label
  -- sym("@operator")          { }, -- Operator
  -- sym("@keyword")           { }, -- Keyword
  -- sym("@exception")         { }, -- Exception
  -- sym("@variable")          { }, -- Identifier
  -- sym("@type")              { }, -- Type
  -- sym("@type.definition")   { }, -- Typedef
  -- sym("@storageclass")      { }, -- StorageClass
  -- sym("@structure")         { }, -- Structure
  -- sym("@namespace")         { }, -- Identifier
  -- sym("@include")           { }, -- Include
  -- sym("@preproc")           { }, -- PreProc
  -- sym("@debug")             { }, -- Debug
  -- sym("@tag")               { }, -- Tag

  -- Plugin-specific syntax groups.
  -- These are all specific to different plugins.

  -- <https://github.com/neoclide/coc.nvim/blob/3de02d70839b30b9744e3005f183fe0850027da3/doc/coc.txt#L3169>
  CocErrorHighlight         = { link = "ErrorText" },
  CocErrorSign              = { link = "ErrorSign" }, -- Link Coc-specific highlights to general ones.
  CocHintHighlight          = { link = "HintText" },
  CocHintSign               = { link = "HintSign" },
  CocInfoHighlight          = { link = "InfoText" },
  CocInfoSign               = { link = "InfoSign" },
  CocWarningHighlight       = { link = "WarningText" },
  CocWarningSign            = { link = "WarningSign" },
  ErrorSign                 = { fg = "#EB3223", italic = true },    -- " LanguageClient in gutter message indicators.
  ErrorText                 = { bg = "#1e070e", undercurl = true }, -- " LanguageClient text that has errors/warnings/etc.
  WarningSign               = { fg = "#EE692C", italic = true },
  WarningText               = { undercurl = true },
  HintMsg                   = { fg = "#DFFC96", italic = true },
  HintSign                  = { fg = "#FFFD54", italic = true },
  HintText                  = { undercurl = true },
  InfoMsg                   = { fg = "#D1B08C", italic = true },
  InfoSign                  = { fg = "#FFFD54", italic = true },
  InfoText                  = { undercurl = true },
  -- <https://github.com/folke/flash.nvim#-highlights>
  FlashBackdrop             = { fg = c.flash_inactive },                       -- https://github.com/folke/flash.nvim: the background color when searching (grey everything out).
  FlashLabel                = { bg = c.match_paren, bold = true },             -- https://github.com/folke/flash.nvim: the label color when searching (find the letter you want to type to jump).
  -- <https://github.com/airblade/vim-gitgutter#signs-colours-and-symbols>
  GitGutterAdd              = { fg = c.gutter_diff.add, bg = c.bg_folded },    -- Git gutter line added + sign column symbols.
  GitGutterChange           = { fg = c.gutter_diff.change, bg = c.bg_folded }, -- Git gutter line changed + sign column symbols.
  GitGutterDelete           = { fg = c.gutter_diff.delete, bg = c.bg_folded }, -- Git gutter line deleted - sign column symbols.
  GitGutterAddIntraLine     = { link = "DiffAdd" },
  GitGutterDeleteIntraLine  = { link = "DiffDelete" },
  -- <https://github.com/ap/vim-buftabline/blob/73b9ef5dcb6cdf6488bc88adb382f20bc3e3262a/doc/buftabline.txt#L112>
  BufTabLineCurrent         = { link = "TabLineSel" },        -- Buffer shown in current window
  -- BufTabLineActive = { link = "PmenuSel" }, -- Buffer shown in other window
  BufTabLineActive          = { link = "PmenuSel" },          -- Buffer shown in other window
  BufTabLineHidden          = { link = "TabLine" },           -- Buffer not currently visible
  BufTabLineFill            = { link = "TabLineFill" },       -- Empty area
  BufTabLineModifiedCurrent = { link = "BufTabLineCurrent" }, -- (Same as linked but 'modified')
  BufTabLineModifiedActive  = { link = "BufTabLineActive" },  -- (Same as linked but 'modified')
  BufTabLineModifiedHidden  = { link = "BufTabLineHidden" },  -- (Same as linked but 'modified')
}

for group, colors in pairs(highlights) do
  -- e.g. :lua vim.api.nvim_set_hl(0, "MatchParen", { fg = "#c6c6c6", bg = "#ff0087", bold = true })
  vim.api.nvim_set_hl(0, group, colors)
end
