" === MAHALO Colorscheme ===
"
" Mahalo only uses the 16 ANSI colors defined in you terminal, providing a coherent aesthetics in every TUI application
"
" Generated from Gerardo Galindez's Vim colorscheme template file
" Notes: To check the meaning of the highlight groups, :help 'highlight'

" --------------------------------
set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="mahalo"

"----------------------------------------------------------------
" General settings                                              |
"----------------------------------------------------------------
"----------------------------------------------------------------
" Syntax group   | Foreground    | Background    | Style        |
"----------------------------------------------------------------

" --------------------------------
" Editor settings
" --------------------------------
" hi Normal          ctermfg=none    ctermbg=none    cterm=none
" hi Cursor          ctermfg=none    ctermbg=none    cterm=none
hi CursorLine      ctermfg=none    ctermbg=none    cterm=none
hi LineNr          ctermfg=8       ctermbg=none    cterm=none
hi CursorLineNR    ctermfg=3       ctermbg=8       cterm=none

" -----------------
" - Number column -
" -----------------
hi CursorColumn    ctermfg=none    ctermbg=7       cterm=none
hi FoldColumn      ctermfg=15      ctermbg=8       cterm=none
" hi SignColumn      ctermfg=none    ctermbg=none    cterm=none
hi Folded          ctermfg=6       ctermbg=8       cterm=italic

" -------------------------
" - Window/Tab delimiters - 
" -------------------------
hi VertSplit       ctermfg=15      ctermbg=8       cterm=none
hi ColorColumn     ctermfg=7       ctermbg=8       cterm=none
hi TabLine         ctermfg=15      ctermbg=7       cterm=none
hi TabLineFill     ctermfg=8       ctermbg=8       cterm=none
hi TabLineSel      ctermfg=0       ctermbg=15      cterm=bold

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi Directory       ctermfg=4       ctermbg=none    cterm=bold
hi Search          ctermfg=0       ctermbg=11      cterm=none
hi IncSearch       ctermfg=none    ctermbg=none    cterm=reverse

" -----------------
" - Prompt/Status -
" -----------------
hi StatusLine      ctermfg=15      ctermbg=8       cterm=none
hi StatusLineNC    ctermfg=7       ctermbg=8       cterm=none
hi WildMenu        ctermfg=0       ctermbg=11      cterm=none
hi Question        ctermfg=2       ctermbg=none    cterm=none
hi Title           ctermfg=5       ctermbg=none    cterm=none
hi ModeMsg         ctermfg=none    ctermbg=none    cterm=bold
hi MoreMsg         ctermfg=2       ctermbg=none    cterm=none

" --------------
" - Visual aid -
" --------------
hi MatchParen      ctermfg=0       ctermbg=9       cterm=none
hi Visual          ctermfg=none    ctermbg=none    cterm=reverse
hi NonText         ctermfg=8       ctermbg=none    cterm=none

hi Todo            ctermfg=0       ctermbg=3       cterm=none
hi Underlined      ctermfg=5       ctermbg=none    cterm=underline
hi Error           ctermfg=15      ctermbg=9       cterm=none
hi ErrorMsg        ctermfg=15      ctermbg=1       cterm=none
hi WarningMsg      ctermfg=1       ctermbg=none    cterm=none
hi Ignore          ctermfg=15      ctermbg=none    cterm=none
hi SpecialKey      ctermfg=4       ctermbg=none    cterm=none

" --------------------------------
" Variable types
" --------------------------------
hi Constant        ctermfg=5       ctermbg=none    cterm=none
hi String          ctermfg=2       ctermbg=none    cterm=italic
" hi StringDelimiter ctermfg=none    ctermbg=none    cterm=none
" hi Character       ctermfg=none    ctermbg=none    cterm=none
" hi Number          ctermfg=none    ctermbg=none    cterm=none
" hi Boolean         ctermfg=none    ctermbg=none    cterm=none
" hi Float           ctermfg=none    ctermbg=none    cterm=none

hi Identifier      ctermfg=6       ctermbg=none    cterm=none
" hi Function        ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Language constructs
" --------------------------------
hi Statement       ctermfg=1       ctermbg=none    cterm=none
" hi Conditional     ctermfg=none    ctermbg=none    cterm=none
" hi Repeat          ctermfg=none    ctermbg=none    cterm=none
" hi Label           ctermfg=6       ctermbg=none    cterm=none
" hi Operator        ctermfg=none    ctermbg=none    cterm=none
" hi Keyword         ctermfg=4       ctermbg=none    cterm=none
" hi Exception       ctermfg=none    ctermbg=none    cterm=none
hi Comment         ctermfg=7       ctermbg=none    cterm=italic

hi Special         ctermfg=5       ctermbg=none    cterm=italic
" hi SpecialChar     ctermfg=none    ctermbg=none    cterm=none
" hi Tag             ctermfg=none    ctermbg=none    cterm=none
" hi Delimiter       ctermfg=none    ctermbg=none    cterm=none
" hi SpecialComment  ctermfg=none    ctermbg=none    cterm=none
" hi Debug           ctermfg=none    ctermbg=none    cterm=none

" ----------
" - C like -
" ----------
hi PreProc         ctermfg=4       ctermbg=none    cterm=none
" hi Include         ctermfg=none    ctermbg=none    cterm=none
" hi Define          ctermfg=none    ctermbg=none    cterm=none
" hi Macro           ctermfg=none    ctermbg=none    cterm=none
" hi PreCondit       ctermfg=none    ctermbg=none    cterm=none

hi Type            ctermfg=3       ctermbg=none    cterm=none
" hi StorageClass    ctermfg=6       ctermbg=none    cterm=none
" hi Structure       ctermfg=none    ctermbg=none    cterm=none
" hi Typedef         ctermfg=9       ctermbg=none    cterm=none

" --------------------------------
" Diff
" --------------------------------
hi DiffAdd         ctermfg=0       ctermbg=2       cterm=none
hi DiffChange      ctermfg=0       ctermbg=3       cterm=none
hi DiffDelete      ctermfg=0       ctermbg=1       cterm=none
hi DiffText        ctermfg=0       ctermbg=11      cterm=bold

" --------------------------------
" Completion menu
" --------------------------------
hi Pmenu           ctermfg=15      ctermbg=7       cterm=none
hi PmenuSel        ctermfg=0       ctermbg=3       cterm=none
hi PmenuSbar       ctermfg=none    ctermbg=7       cterm=none
hi PmenuThumb      ctermfg=none    ctermbg=15      cterm=none

" --------------------------------
" Spelling
" --------------------------------
hi SpellBad        ctermfg=none    ctermbg=2       cterm=none
hi SpellCap        ctermfg=15      ctermbg=8       cterm=none
hi SpellLocal      ctermfg=none    ctermbg=14      cterm=none
hi SpellRare       ctermfg=none    ctermbg=5       cterm=none

"--------------------------------------------------------------------
" Specific settings                                                 |
"--------------------------------------------------------------------
" Vim
" hi link vimHiAttrib Identifier
" hi link vimEnvvar Identifier
" hi link vimCommentTitle Label
" hi link vimOption Label
"
" GitGutter
highlight GitGutterAdd        ctermfg=2
highlight GitGutterChange     ctermfg=3
highlight GitGutterDelete     ctermfg=1
