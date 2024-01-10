-- Run this to show all colors currently set.
--   :so $VIMRUNTIME/syntax/hitest.vim

-- Clear existing colors if a colorscheme is already loaded.
if vim.g.colors_name then
  vim.cmd("highlight clear")
end

vim.opt.background = 'dark'
vim.g.colors_name = 'gib-noir'

local highlights = {

  CocErrorHighlight = { link = "ErrorText" },
  CocErrorSign = { link = "ErrorSign" }, -- Link Coc-specific highlights to general ones.
  CocHintHighlight = { link = "HintText" },
  CocHintSign = { link = "HintSign" },
  CocInfoHighlight = { link = "InfoText" },
  CocInfoSign = { link = "InfoSign" },
  CocWarningHighlight = { link = "WarningText" },
  CocWarningSign = { link = "WarningSign" },
  ColorColumn = { bg = "#383734" },
  Comment = { fg = "#808080", italic = true },
  Conceal = { fg = "#c6c6c6" },
  Constant = { fg = "#e6987a", italic = true },
  Cursor = { fg = "#000000", bg = "#6BF549" },
  CursorColumn = { bg = "#383734" },
  CursorLine = { bg = "#383734" },
  CursorLineNr = { fg = "#e2e2e2", bg = "#383734", bold = true },
  DiffAdd = { bg = "#062905" }, -- Gitgutter/vimdiff added lines (no fg to preserve syntax highlighting in diff blocks).
  DiffChange = { bg = "#1d3e42" }, -- Gitgutter/vimdiff changed lines (unchanged text).
  DiffDelete = { bg = "#3d0c0a" }, -- GitGutter/vimdiff deleted lines
  DiffText = { bg = "#472346" }, -- GitGutter/vimdiff changed lines (changed text).
  Directory = { fg = "#e6987a" }, -- Directories in the file browser.
  Error = { fg = "#d96e8a", bold = true }, -- LanguageClient Errors.
  ErrorMsg = { fg = "#B25E79", italic = true }, -- " LanguageClient inline messages.
  ErrorSign = { fg = "#EB3223", italic = true }, -- " LanguageClient in gutter message indicators.
  ErrorText = { bg = "#1e070e", undercurl = true }, -- " LanguageClient text that has errors/warnings/etc.
  FlashBackdrop = { fg = "#545c7e" }, -- https://github.com/folke/flash.nvim: the background color when searching (grey everything out).
  FlashLabel = { bg = "#ff007c", fg = "#c0caf5", bold = true }, -- https://github.com/folke/flash.nvim: the label color when searching (find the letter you want to type to jump).
  FoldColumn = { fg = "#8787af", bg = "#242322" },
  Folded = { fg = "#8787af", bg = "#242322" },
  Function = { fg = "#88da77" },
  HintMsg = { fg = "#DFFC96", italic = true },
  HintSign = { fg = "#FFFD54", italic = true },
  HintText = { undercurl = true },
  Identifier = { fg = "#75d7d8" },
  IncSearch = { fg = "#000000", bg = "#ff5fd7" }, -- Next match of text you're searching for as you type the search term.
  InfoMsg = { fg = "#D1B08C", italic = true },
  InfoSign = { fg = "#FFFD54", italic = true },
  InfoText = { undercurl = true },
  Keyword = { fg = "#d96e8a", bold = true },
  LineNr = { fg = "#808080", bg = "#242322" }, -- Line numbers in the left gutter.
  MatchParen = { fg = "#ffffff", bg = "#ff0087", bold = true },
  ModeMsg = { fg = "#e2e2e2", bold = true },
  MoreMsg = { fg = "#8cd991", bold = true },
  NonText = { fg = "#7eaefd" }, -- Linebreak characters (trailing spaces etc).
  Normal = { fg = "#c6c6c6", bg = "#000000" }, -- Normal text (and default background color).
  Number = { fg = "#dbc570" },
  Pmenu = { fg = "#c6c6c6", bg = "#242322" },
  PmenuSbar = { fg = "#ff5fd7", bg = "#262626" },
  PmenuSel = { fg = "#000000", bg = "#9e9e9e" }, -- Buftabline active (buffers open in a different split for multiple splits).
  PmenuThumb = { fg = "#2e2d2b", bg = "#ff5fd7" },
  PreProc = { fg = "#dbc570" },
  Question = { fg = "#75d7d8", bold = true },
  Search = { fg = "#ff8901", bold = true }, -- Text matching current search (cancelled by nohl).
  SignColumn = { fg = "#808080", bg = "#2e2d2b" },
  Special = { fg = "#ce6bd0" },
  SpecialKey = { fg = "#7eaefd" },
  SpellBad = { undercurl = true, sp = "#d96e8a" },
  SpellCap = { undercurl = true, sp = "#75d7d8" },
  SpellLocal = { undercurl = true, sp = "#dbc570" },
  SpellRare = { undercurl = true, sp = "#8cd991" },
  Statement = { fg = "#d96e8a", bold = true },
  StatusLine = { fg = "#000000", bg = "#9e9e9e" }, -- Background status line colors.
  StatusLineNC = { fg = "#b2b2b2", bg = "#4a4a4a" },
  String = { fg = "#ad8788", italic = true },
  TabLine = { fg = "#808080", bg = "#242322" }, -- Buftabline background (buffers that aren't currently open anywhere).
  TablineFill = { fg = "#808080", bg = "#242322" },
  TablineSel = { fg = "#000000", bg = "#7eaefd", bold = true }, -- Buftabline selected (buffer the cursor is currently in).
  Title = { fg = "#a080ea", bold = true },
  Todo = { fg = "#75d7d8", bold = true }, -- Todos and LanguageClient warnings.
  Type = { fg = "#a080ea", bold = true },
  Underlined = { fg = "#7eaefd", underline = true },
  VertSplit = { fg = "#4a4a4a", bg = "#4a4a4a" }, -- The vertical split bar.
  Visual = { fg = "#e2e2e2", bg = "#5c5c5c" }, -- Visual Selection
  VisualNOS = { fg = "#e2e2e2", underline = true },
  WarningMsg = { fg = "#A56221", italic = true },
  WarningSign = { fg = "#EE692C", italic = true },
  WarningText = { undercurl = true },
  WildMenu = { fg = "#000000", bg = "#75d7d8" }, -- Selected item in the :command mode tab-completion menu.
  htmlEndTag = { fg = "#88da77" },
  lCursor = { fg = "#000000", bg = "#e2e2e2" },
  xmlEndTag = { fg = "#88da77" },

}

for group, colors in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, colors)
end
