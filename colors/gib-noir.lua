-- Run this to show all colors currently set.
--   :so $VIMRUNTIME/syntax/hitest.vim

-- Clear existing colors if a colorscheme is already loaded.
if vim.g.colors_name then
  vim.cmd("highlight clear")
end

vim.opt.background = 'dark'
vim.g.colors_name = 'gib-noir'

local highlights = {
  -- Normal text (and default background color).
  Normal = { fg = "#c6c6c6", bg = "#000000", },
  SpecialKey = { fg = "#7eaefd", },
  -- Linebreak characters (trailing spaces etc).
  NonText = { fg = "#7eaefd", },
  -- Directories in the file browser.
  Directory = { fg = "#e6987a", },
  -- Next match of text you're searching for as you type the search term.
  IncSearch = { fg = "#000000", bg = "#ff5fd7", },
  -- Line numbers in the left gutter.
  LineNr = { fg = "#808080", bg = "#242322", },
  -- Background status line colors.
  StatusLine = { fg = "#000000", bg = "#9e9e9e", },
  StatusLineNC = { fg = "#b2b2b2", bg = "#4a4a4a", },
  -- The vertical split bar.
  VertSplit = { fg = "#4a4a4a", bg = "#4a4a4a", },
  -- Visual Selection
  Visual = { fg = "#e2e2e2", bg = "#5c5c5c", },
  VisualNOS = { fg = "#e2e2e2", underline = true, },
  -- Selected item in the :command mode tab-completion menu.
  WildMenu = { fg = "#000000", bg = "#75d7d8", },
  Folded = { fg = "#8787af", bg = "#242322", },
  FoldColumn = { fg = "#8787af", bg = "#242322", },
  -- Diff highlighting, no fg to preserve syntax highlighting in diff blocks.
  -- Gitgutter/vimdiff added lines
  DiffAdd = { bg = "#062905", },
  -- Gitgutter/vimdiff changed lines (unchanged text).
  DiffChange = { bg = "#1d3e42", },
  -- GitGutter/vimdiff deleted lines
  DiffDelete = { bg = "#3d0c0a", },
  -- GitGutter/vimdiff changed lines (changed text).
  DiffText = { bg = "#472346", },
  SignColumn = { fg = "#808080", bg = "#2e2d2b", },
  Conceal = { fg = "#c6c6c6", },
  SpellBad = { undercurl = true, sp = "#d96e8a", },
  SpellCap = { undercurl = true, sp = "#75d7d8", },
  SpellRare = { undercurl = true, sp = "#8cd991", },
  SpellLocal = { undercurl = true, sp = "#dbc570", },
  Pmenu = { fg = "#c6c6c6", bg = "#242322", },
  -- Buftabline selected (buffer the cursor is currently in).
  TablineSel = { fg = "#000000", bg = "#7eaefd", bold = true, },
  -- Buftabline active (buffers open in a different split for multiple splits).
  PmenuSel = { fg = "#000000", bg = "#9e9e9e", },
  -- Buftabline background (buffers that aren't currently open anywhere).
  TabLine = { fg = "#808080", bg = "#242322", },
  PmenuSbar = { fg = "#ff5fd7", bg = "#262626", },
  PmenuThumb = { fg = "#2e2d2b", bg = "#ff5fd7", },
  TablineFill = { fg = "#808080", bg = "#242322", },
  CursorColumn = { bg = "#383734", },
  CursorLine = { bg = "#383734", },
  ColorColumn = { bg = "#383734", },
  Cursor = { fg = "#000000", bg = "#6BF549", },
  lCursor = { fg = "#000000", bg = "#e2e2e2", },
  Special = { fg = "#ce6bd0", },
  Identifier = { fg = "#75d7d8", },
  PreProc = { fg = "#dbc570", },
  Number = { fg = "#dbc570", },
  Function = { fg = "#88da77", },
  htmlEndTag = { fg = "#88da77", },
  xmlEndTag = { fg = "#88da77", },
  -- Text matching current search (cancelled by nohl).
  Search = { fg = "#ff8901", bold = true, },
  MoreMsg = { fg = "#8cd991", bold = true, },
  ModeMsg = { fg = "#e2e2e2", bold = true, },
  CursorLineNr = { fg = "#e2e2e2", bg = "#383734", bold = true, },
  Question = { fg = "#75d7d8", bold = true, },
  Statement = { fg = "#d96e8a", bold = true, },
  Type = { fg = "#a080ea", bold = true, },
  -- " LanguageClient inline messages.
  ErrorMsg = { fg = "#B25E79", italic = true, },
  WarningMsg = { fg = "#A56221", italic = true, },
  InfoMsg = { fg = "#D1B08C", italic = true, },
  HintMsg = { fg = "#DFFC96", italic = true, },
  -- " LanguageClient in gutter message indicators.
  ErrorSign = { fg = "#EB3223", italic = true, },
  WarningSign = { fg = "#EE692C", italic = true, },
  InfoSign = { fg = "#FFFD54", italic = true, },
  HintSign = { fg = "#FFFD54", italic = true, },
  -- " LanguageClient text that has errors/warnings/etc.
  ErrorText = { bg = "#1e070e", undercurl = true, },
  WarningText = { undercurl = true, },
  InfoText = { undercurl = true, },
  HintText = { undercurl = true, },
  -- LanguageClient Errors.
  Error = { fg = "#d96e8a", bold = true, },
  -- Todos and LanguageClient warnings.
  Todo = { fg = "#75d7d8", bold = true, },
  Keyword = { fg = "#d96e8a", bold = true, },
  Title = { fg = "#a080ea", bold = true, },
  MatchParen = { fg = "#ffffff", bg = "#ff0087", bold = true, },
  Comment = { fg = "#808080", italic = true, },
  Constant = { fg = "#e6987a", italic = true, },
  String = { fg = "#ad8788", italic = true, },
  Underlined = { fg = "#7eaefd", underline = true, },
  -- Link Coc-specific highlights to general ones.
  CocErrorSign = { link = "ErrorSign" },
  CocWarningSign = { link = "WarningSign" },
  CocInfoSign = { link = "InfoSign" },
  CocHintSign = { link = "HintSign" },
  CocErrorHighlight = { link = "ErrorText" },
  CocWarningHighlight = { link = "WarningText" },
  CocInfoHighlight = { link = "InfoText" },
  CocHintHighlight = { link = "HintText" },
  -- https://github.com/folke/flash.nvim: the background color when searching (grey everything out).
  FlashBackdrop = { fg = "#545c7e" },
  -- https://github.com/folke/flash.nvim: the label color when searching (find the letter you want to type to jump).
  FlashLabel = { bg = "#ff007c", fg = "#c0caf5", bold = true, },
}

for group, colors in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, colors)
end
