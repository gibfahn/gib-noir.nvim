" Name: gib
" Author: Gibson Fahnestock <gibfahn@gmail.com>
" Version: 0.0.1
" URL: https://github.com/gib/vim-gib
" License: MIT
"
" --------------------------------------------------------------------------
" INSTALLATION
" --------------------------------------------------------------------------
" Copy gib.vim to ~/.vim/colors.
" Then add the line "colorscheme gib" in your vimrc file and restart Vim.
"
" --------------------------------------------------------------------------
" Developing
" --------------------------------------------------------------------------
"
" Run this to show all colors currently set.
"   :so $VIMRUNTIME/syntax/hitest.vim

highlight clear
set background=dark
if exists("syntax_on")| syntax reset| endif
let g:colors_name="gib"

" GUI Colors.
highlight Normal          guifg=#c6c6c6    guibg=#2e2d2b    gui=none
highlight SpecialKey      guifg=#7eaefd    guibg=NONE       gui=none
highlight NonText         guifg=#7eaefd    guibg=#2e2d2b    gui=none
highlight Directory       guifg=#e6987a    guibg=NONE       gui=none
highlight IncSearch       guifg=#000000    guibg=#ff5fd7    gui=none
highlight LineNr          guifg=#808080    guibg=#242322    gui=none
highlight StatusLine      guifg=#000000    guibg=#9e9e9e    gui=none
highlight StatusLineNC    guifg=#b2b2b2    guibg=#4a4a4a    gui=none
highlight VertSplit       guifg=#4a4a4a    guibg=#4a4a4a    gui=none
highlight Visual          guifg=#e2e2e2    guibg=#5c5c5c    gui=none
highlight VisualNOS       guifg=#e2e2e2    guibg=NONE       gui=underline
highlight WildMenu        guifg=#000000    guibg=#75d7d8    gui=none
highlight Folded          guifg=#8787af    guibg=#242322    gui=none
highlight FoldColumn      guifg=#8787af    guibg=#242322    gui=none
highlight DiffAdd         guifg=NONE       guibg=#005154    gui=none
highlight DiffChange      guifg=NONE       guibg=#4f3598    gui=none
highlight DiffDelete      guifg=#d96e8a    guibg=#72323f    gui=none
highlight DiffText        guifg=#000000    guibg=#75d7d8    gui=none
highlight SignColumn      guifg=#808080    guibg=#2e2d2b    gui=none
highlight Conceal         guifg=#c6c6c6    guibg=NONE       gui=none
highlight SpellBad        guifg=NONE       guibg=NONE       gui=undercurl    guisp=#d96e8a
highlight SpellCap        guifg=NONE       guibg=NONE       gui=undercurl    guisp=#75d7d8
highlight SpellRare       guifg=NONE       guibg=NONE       gui=undercurl    guisp=#8cd991
highlight SpellLocal      guifg=NONE       guibg=NONE       gui=undercurl    guisp=#dbc570
highlight Pmenu           guifg=#c6c6c6    guibg=#242322    gui=none
highlight PmenuSel        guifg=#000000    guibg=#7eaefd    gui=none
highlight PmenuSbar       guifg=#ff5fd7    guibg=#262626    gui=none
highlight PmenuSbar       guifg=#ff5fd7    guibg=#2e2d2b    gui=none
highlight PmenuThumb      guifg=#2e2d2b    guibg=#ff5fd7    gui=none
highlight TabLine         guifg=#808080    guibg=#242322    gui=none
highlight TablineSel      guifg=#000000    guibg=#9e9e9e    gui=none
highlight TablineFill     guifg=#808080    guibg=#242322    gui=none
highlight CursorColumn    guifg=NONE       guibg=#383734    gui=none
highlight CursorLine      guifg=NONE       guibg=#383734    gui=none
highlight ColorColumn     guifg=NONE       guibg=#383734    gui=none
highlight Cursor          guifg=#000000    guibg=#e2e2e2    gui=none
highlight lCursor         guifg=#000000    guibg=#e2e2e2    gui=none
highlight Special         guifg=#ce6bd0    guibg=NONE       gui=none
highlight Identifier      guifg=#75d7d8    guibg=NONE       gui=none
highlight PreProc         guifg=#dbc570    guibg=NONE       gui=none
highlight Number          guifg=#dbc570    guibg=NONE       gui=none
highlight Function        guifg=#88da77    guibg=NONE       gui=none
highlight htmlEndTag      guifg=#88da77    guibg=NONE       gui=none
highlight xmlEndTag       guifg=#88da77    guibg=NONE       gui=none
highlight ErrorMsg        guifg=#d96e8a    guibg=NONE       gui=bold
highlight Search          guifg=#ff8901    guibg=NONE       gui=bold
highlight MoreMsg         guifg=#8cd991    guibg=NONE       gui=bold
highlight ModeMsg         guifg=#e2e2e2    guibg=NONE       gui=bold
highlight CursorLineNr    guifg=#e2e2e2    guibg=#383734    gui=bold
highlight Question        guifg=#75d7d8    guibg=NONE       gui=bold
highlight WarningMsg      guifg=#ff5fd7    guibg=NONE       gui=bold
highlight Statement       guifg=#d96e8a    guibg=NONE       gui=bold
highlight Type            guifg=#a080ea    guibg=NONE       gui=bold
highlight Error           guifg=#d96e8a    guibg=NONE       gui=bold
highlight Todo            guifg=#75d7d8    guibg=NONE       gui=bold
highlight Keyword         guifg=#d96e8a    guibg=NONE       gui=bold
highlight Title           guifg=#a080ea    guibg=NONE       gui=bold
highlight MatchParen      guifg=#ffffff     guibg=#ff0087   gui=bold
highlight Comment         guifg=#808080    guibg=NONE   gui=italic
highlight Constant        guifg=#e6987a    guibg=NONE   gui=italic
highlight String          guifg=#ad8788    guibg=NONE   gui=italic
highlight Underlined      guifg=#7eaefd    guibg=NONE   gui=underline

" Terminal colors (256 colors).
if &t_Co > 255
  highlight Normal          ctermfg=251     ctermbg=232     cterm=none | " Normal text
  highlight SpecialKey      ctermfg=111     ctermbg=none    cterm=none
  highlight NonText         ctermfg=111     ctermbg=232     cterm=none | " Linebreak chars.
  highlight Directory       ctermfg=180     ctermbg=none    cterm=none | " Dir in file browser
  highlight IncSearch       ctermfg=0       ctermbg=206     cterm=none | " While typing word
  highlight LineNr          ctermfg=244     ctermbg=234     cterm=none
  highlight StatusLine      ctermfg=0       ctermbg=247     cterm=none
  highlight StatusLineNC    ctermfg=247     ctermbg=238     cterm=none
  highlight VertSplit       ctermfg=238     ctermbg=238     cterm=none
  highlight Visual          ctermfg=254     ctermbg=240     cterm=none
  highlight VisualNOS       ctermfg=254     ctermbg=none    cterm=underline
  highlight WildMenu        ctermfg=0       ctermbg=80      cterm=none
  highlight Folded          ctermfg=103     ctermbg=234     cterm=none
  highlight FoldColumn      ctermfg=103     ctermbg=234     cterm=none
  highlight DiffAdd         ctermfg=none    ctermbg=23      cterm=none
  highlight DiffChange      ctermfg=none    ctermbg=56      cterm=none
  highlight DiffDelete      ctermfg=168     ctermbg=96      cterm=none
  highlight DiffText        ctermfg=0       ctermbg=80      cterm=none
  highlight SignColumn      ctermfg=244     ctermbg=235     cterm=none
  highlight Conceal         ctermfg=251     ctermbg=none    cterm=none
  highlight SpellBad        ctermfg=168     ctermbg=none    cterm=underline
  highlight SpellCap        ctermfg=80      ctermbg=none    cterm=underline
  highlight SpellRare       ctermfg=121     ctermbg=none    cterm=underline
  highlight SpellLocal      ctermfg=186     ctermbg=none    cterm=underline
  highlight Pmenu           ctermfg=251     ctermbg=234     cterm=none
  highlight PmenuSel        ctermfg=0       ctermbg=247     cterm=none | " BufTabLine active
  highlight PmenuSbar       ctermfg=206     ctermbg=235     cterm=none
  highlight PmenuThumb      ctermfg=235     ctermbg=206     cterm=none
  highlight TabLine         ctermfg=244     ctermbg=234     cterm=none
  highlight TablineSel      ctermfg=0       ctermbg=111     cterm=none | " Buftabline select
  highlight TablineFill     ctermfg=244     ctermbg=234     cterm=none
  highlight CursorColumn    ctermfg=none    ctermbg=236     cterm=none
  highlight CursorLine      ctermfg=none    ctermbg=236     cterm=none
  highlight ColorColumn     ctermfg=none    ctermbg=236     cterm=none
  highlight Cursor          ctermfg=0       ctermbg=254     cterm=none
  highlight Comment         ctermfg=244     ctermbg=none    cterm=none
  highlight Constant        ctermfg=180     ctermbg=none    cterm=none
  highlight Special         ctermfg=176     ctermbg=none    cterm=none
  highlight Identifier      ctermfg=80      ctermbg=none    cterm=none
  highlight PreProc         ctermfg=186     ctermbg=none    cterm=none
  highlight String          ctermfg=138     ctermbg=none    cterm=none
  highlight Number          ctermfg=186     ctermbg=none    cterm=none
  highlight Function        ctermfg=114     ctermbg=none    cterm=none
  highlight htmlEndTag      ctermfg=114     ctermbg=none    cterm=none
  highlight xmlEndTag       ctermfg=114     ctermbg=none    cterm=none
  highlight ErrorMsg        ctermfg=168     ctermbg=none    cterm=bold
  highlight Search          ctermfg=208     ctermbg=none    cterm=bold | " After search.
  highlight MoreMsg         ctermfg=121     ctermbg=none    cterm=bold
  highlight ModeMsg         ctermfg=254     ctermbg=none    cterm=bold
  highlight CursorLineNr    ctermfg=254     ctermbg=236     cterm=bold
  highlight Question        ctermfg=80      ctermbg=none    cterm=bold
  highlight WarningMsg      ctermfg=206     ctermbg=none    cterm=bold
  highlight Statement       ctermfg=168     ctermbg=none    cterm=bold
  highlight Type            ctermfg=141     ctermbg=none    cterm=bold
  highlight Error           ctermfg=168     ctermbg=none    cterm=bold
  highlight Todo            ctermfg=80      ctermbg=none    cterm=bold
  highlight Keyword         ctermfg=168     ctermbg=none    cterm=bold
  highlight Title           ctermfg=141     ctermbg=none    cterm=bold
  highlight MatchParen      ctermfg=255     ctermbg=198     cterm=bold
  highlight Underlined      ctermfg=111     ctermbg=none    cterm=underline
end
