" Name: gib
" Author: Gibson Fahnestock <gibfahn@gmail.com>
" Version: 0.0.1
" URL: https://github.com/gib/vim-gib
" License: MIT
"
" --------------------------------------------------------------------------
" INSTALLATION
" --------------------------------------------------------------------------
" Minimal vimrc:
"   Plug 'gibfahn/vim-gib'   " Uses github.com/junegunn/vim-plug
"   colorscheme gib
"   set termguicolors
"
" This file only sets gui colors, so requires a 24-bit color terminal.
" --------------------------------------------------------------------------
" Developing
" --------------------------------------------------------------------------
"
" Run this to show all colors currently set.
"   :so $VIMRUNTIME/syntax/hitest.vim
"
" You can set gui=undercurl,italic for multiple options.

set background=dark
highlight clear
if exists("syntax_on")| syntax reset| endif
let g:colors_name="gib"

" Normal text (and default background color).
highlight Normal          guifg=#c6c6c6    guibg=#000000    gui=NONE
highlight SpecialKey      guifg=#7eaefd    guibg=NONE       gui=NONE
" Linebreak characters (trailing spaces etc).
highlight NonText         guifg=#7eaefd    guibg=NONE       gui=NONE
" Directories in the file browser.
highlight Directory       guifg=#e6987a    guibg=NONE       gui=NONE
" Next match of text you're searching for as you type the search term.
highlight IncSearch       guifg=#000000    guibg=#ff5fd7    gui=NONE
" Line numbers in the left gutter.
highlight LineNr          guifg=#808080    guibg=#242322    gui=NONE
" Background status line colors.
highlight StatusLine      guifg=#000000    guibg=#9e9e9e    gui=NONE
highlight StatusLineNC    guifg=#b2b2b2    guibg=#4a4a4a    gui=NONE
" The vertical split bar.
highlight VertSplit       guifg=#4a4a4a    guibg=#4a4a4a    gui=NONE
" Visual Selection
highlight Visual          guifg=#e2e2e2    guibg=#5c5c5c    gui=NONE
highlight VisualNOS       guifg=#e2e2e2    guibg=NONE       gui=underline
" Selected item in the :command mode tab-completion menu.
highlight WildMenu        guifg=#000000    guibg=#75d7d8    gui=NONE
highlight Folded          guifg=#8787af    guibg=#242322    gui=NONE
highlight FoldColumn      guifg=#8787af    guibg=#242322    gui=NONE

" Diff highlighting, no guifg to preserve syntax highlighting in diff blocks.
" Gitgutter/vimdiff added lines
highlight DiffAdd         guifg=NONE       guibg=#062905    gui=NONE
" Gitgutter/vimdiff changed lines (unchanged text).
highlight DiffChange      guifg=NONE       guibg=#1d3e42    gui=NONE
" GitGutter/vimdiff deleted lines
highlight DiffDelete      guifg=NONE       guibg=#3d0c0a    gui=NONE
" GitGutter/vimdiff changed lines (changed text).
highlight DiffText        guifg=NONE       guibg=#472346    gui=NONE

highlight SignColumn      guifg=#808080    guibg=#2e2d2b    gui=NONE
highlight Conceal         guifg=#c6c6c6    guibg=NONE       gui=NONE
highlight SpellBad        guifg=NONE       guibg=NONE       gui=undercurl    guisp=#d96e8a
highlight SpellCap        guifg=NONE       guibg=NONE       gui=undercurl    guisp=#75d7d8
highlight SpellRare       guifg=NONE       guibg=NONE       gui=undercurl    guisp=#8cd991
highlight SpellLocal      guifg=NONE       guibg=NONE       gui=undercurl    guisp=#dbc570
highlight Pmenu           guifg=#c6c6c6    guibg=#242322    gui=NONE
" Buftabline selected (buffer the cursor is currently in).
highlight TablineSel      guifg=#000000    guibg=#7eaefd    gui=bold
" Buftabline active (buffers open in a different split for multiple splits).
highlight PmenuSel        guifg=#000000    guibg=#9e9e9e    gui=NONE
" Buftabline background (buffers that aren't currently open anywhere).
highlight TabLine         guifg=#808080    guibg=#242322    gui=NONE
highlight PmenuSbar       guifg=#ff5fd7    guibg=#262626    gui=NONE
highlight PmenuThumb      guifg=#2e2d2b    guibg=#ff5fd7    gui=NONE
highlight TablineFill     guifg=#808080    guibg=#242322    gui=NONE
highlight CursorColumn    guifg=NONE       guibg=#383734    gui=NONE
highlight CursorLine      guifg=NONE       guibg=#383734    gui=NONE
highlight ColorColumn     guifg=NONE       guibg=#383734    gui=NONE
highlight Cursor          guifg=#000000    guibg=#6BF549    gui=NONE
highlight lCursor         guifg=#000000    guibg=#e2e2e2    gui=NONE
highlight Special         guifg=#ce6bd0    guibg=NONE       gui=NONE
highlight Identifier      guifg=#75d7d8    guibg=NONE       gui=NONE
highlight PreProc         guifg=#dbc570    guibg=NONE       gui=NONE
highlight Number          guifg=#dbc570    guibg=NONE       gui=NONE
highlight Function        guifg=#88da77    guibg=NONE       gui=NONE
highlight htmlEndTag      guifg=#88da77    guibg=NONE       gui=NONE
highlight xmlEndTag       guifg=#88da77    guibg=NONE       gui=NONE
" Text matching current search (cancelled by nohl).
highlight Search          guifg=#ff8901    guibg=NONE       gui=bold
highlight MoreMsg         guifg=#8cd991    guibg=NONE       gui=bold
highlight ModeMsg         guifg=#e2e2e2    guibg=NONE       gui=bold
highlight CursorLineNr    guifg=#e2e2e2    guibg=#383734    gui=bold
highlight Question        guifg=#75d7d8    guibg=NONE       gui=bold
highlight WarningMsg      guifg=#ff5fd7    guibg=NONE       gui=bold
highlight Statement       guifg=#d96e8a    guibg=NONE       gui=bold
highlight Type            guifg=#a080ea    guibg=NONE       gui=bold

" " LanguageClient inline messages.
highlight ErrorMsg        guifg=#B25E79     guibg=NONE    gui=italic
highlight WarningMsg      guifg=#A56221     guibg=NONE    gui=italic
highlight InfoMsg         guifg=#D1B08C     guibg=NONE    gui=italic
highlight HintMsg         guifg=#DFFC96     guibg=NONE    gui=italic
" " LanguageClient in gutter message indicators.
highlight ErrorSign       guifg=#EB3223     guibg=NONE    gui=italic
highlight WarningSign     guifg=#EE692C     guibg=NONE    gui=italic
highlight InfoSign        guifg=#FFFD54     guibg=NONE    gui=italic
highlight HintSign        guifg=#FFFD54     guibg=NONE    gui=italic
" " LanguageClient text that has errors/warnings/etc.
highlight ErrorText       guifg=NONE    guibg=#B25E79    gui=undercurl
highlight WarningText     guifg=NONE    guibg=NONE    gui=undercurl
highlight InfoText        guifg=NONE    guibg=NONE    gui=undercurl
highlight HintText        guifg=NONE    guibg=NONE    gui=undercurl
" LanguageClient Errors.
highlight Error           guifg=#d96e8a    guibg=NONE       gui=bold
" Todos and LanguageClient warnings.
highlight Todo            guifg=#75d7d8    guibg=NONE       gui=bold

" Link Coc-specific highlights to general ones.
highlight link CocErrorSign ErrorSign
highlight link CocWarningSign WarningSign
highlight link CocInfoSign InfoSign
highlight link CocHintSign HintSign

highlight link CocErrorHighlight ErrorText
highlight link CocWarningHighlight WarningText
highlight link CocInfoHighlight InfoText
highlight link CocHintHighlight HintText

highlight Keyword         guifg=#d96e8a    guibg=NONE       gui=bold
highlight Title           guifg=#a080ea    guibg=NONE       gui=bold
highlight MatchParen      guifg=#ffffff     guibg=#ff0087   gui=bold
highlight Comment         guifg=#808080    guibg=NONE   gui=italic
highlight Constant        guifg=#e6987a    guibg=NONE   gui=italic
highlight String          guifg=#ad8788    guibg=NONE   gui=italic
highlight Underlined      guifg=#7eaefd    guibg=NONE   gui=underline

" highlight Normal          ctermfg=251     ctermbg=232     cterm=NONE | " Normal text
" highlight SpecialKey      ctermfg=111     ctermbg=NONE    cterm=NONE
" highlight NonText         ctermfg=111     ctermbg=232     cterm=NONE | " Linebreak chars.
" highlight Directory       ctermfg=180     ctermbg=NONE    cterm=NONE | " Dir in file browser
" highlight IncSearch       ctermfg=0       ctermbg=206     cterm=NONE | " While typing word
" highlight LineNr          ctermfg=244     ctermbg=234     cterm=NONE
" highlight StatusLine      ctermfg=0       ctermbg=247     cterm=NONE
" highlight StatusLineNC    ctermfg=247     ctermbg=238     cterm=NONE
" highlight VertSplit       ctermfg=238     ctermbg=238     cterm=NONE
" highlight Visual          ctermfg=254     ctermbg=240     cterm=NONE
" highlight VisualNOS       ctermfg=254     ctermbg=NONE    cterm=underline
" highlight WildMenu        ctermfg=0       ctermbg=80      cterm=NONE
" highlight Folded          ctermfg=103     ctermbg=234     cterm=NONE
" highlight FoldColumn      ctermfg=103     ctermbg=234     cterm=NONE
" " Used by gitgutter (I think)
" highlight DiffAdd         ctermfg=NONE    ctermbg=23      cterm=NONE
" highlight DiffChange      ctermfg=NONE    ctermbg=56      cterm=NONE
" highlight DiffDelete      ctermfg=168     ctermbg=96      cterm=NONE
" highlight DiffText        ctermfg=0       ctermbg=80      cterm=NONE
" highlight SignColumn      ctermfg=244     ctermbg=235     cterm=NONE
" highlight Conceal         ctermfg=251     ctermbg=NONE    cterm=NONE
" highlight SpellBad        ctermfg=168     ctermbg=NONE    cterm=underline
" highlight SpellCap        ctermfg=80      ctermbg=NONE    cterm=underline
" highlight SpellRare       ctermfg=121     ctermbg=NONE    cterm=underline
" highlight SpellLocal      ctermfg=186     ctermbg=NONE    cterm=underline
" highlight Pmenu           ctermfg=251     ctermbg=234     cterm=NONE
" highlight PmenuSel        ctermfg=0       ctermbg=247     cterm=NONE | " BufTabLine active
" highlight PmenuSbar       ctermfg=206     ctermbg=235     cterm=NONE
" highlight PmenuThumb      ctermfg=235     ctermbg=206     cterm=NONE
" highlight TabLine         ctermfg=244     ctermbg=234     cterm=NONE
" highlight TablineSel      ctermfg=0       ctermbg=111     cterm=NONE | " Buftabline select
" highlight TablineFill     ctermfg=244     ctermbg=234     cterm=NONE
" highlight CursorColumn    ctermfg=NONE    ctermbg=236     cterm=NONE
" highlight CursorLine      ctermfg=NONE    ctermbg=236     cterm=NONE
" highlight ColorColumn     ctermfg=NONE    ctermbg=236     cterm=NONE
" highlight Cursor          ctermfg=0       ctermbg=254     cterm=NONE
" highlight Comment         ctermfg=244     ctermbg=NONE    cterm=NONE
" highlight Constant        ctermfg=180     ctermbg=NONE    cterm=NONE
" highlight Special         ctermfg=176     ctermbg=NONE    cterm=NONE
" highlight Identifier      ctermfg=80      ctermbg=NONE    cterm=NONE
" highlight PreProc         ctermfg=186     ctermbg=NONE    cterm=NONE
" highlight String          ctermfg=138     ctermbg=NONE    cterm=NONE
" highlight Number          ctermfg=186     ctermbg=NONE    cterm=NONE
" highlight Function        ctermfg=114     ctermbg=NONE    cterm=NONE
" highlight htmlEndTag      ctermfg=114     ctermbg=NONE    cterm=NONE
" highlight xmlEndTag       ctermfg=114     ctermbg=NONE    cterm=NONE
" highlight MoreMsg         ctermfg=121     ctermbg=NONE    cterm=bold
" highlight ModeMsg         ctermfg=254     ctermbg=NONE    cterm=bold
" highlight CursorLineNr    ctermfg=254     ctermbg=236     cterm=bold
" highlight Question        ctermfg=80      ctermbg=NONE    cterm=bold

" highlight Statement       ctermfg=168     ctermbg=NONE    cterm=bold
" highlight Type            ctermfg=141     ctermbg=NONE    cterm=bold
" highlight Keyword         ctermfg=168     ctermbg=NONE    cterm=bold
" highlight Title           ctermfg=141     ctermbg=NONE    cterm=bold
" highlight MatchParen      ctermfg=255     ctermbg=198     cterm=bold
" highlight Underlined      ctermfg=111     ctermbg=NONE    cterm=underline

syntax enable
