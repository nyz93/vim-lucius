" ============================================================================
" Name:     Lucius neovim colorscheme
" Author:   Nyikos Zoltan <nyikoszoltan0@gmail.com>, Jonathan Filip <jfilip1024@gmail.com>
" Version:  10.0.0
" ----------------------------------------------------------------------------
"
" Based on the vim-lucius colorsheme by Jonathan Filip, reduced to only the
" normal contrast light theme used by me, extended to work with neovim
" Original License:
"
" Copyright (c) 2015 Jonathan Filip
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.
"

unlet! g:colors_name
hi clear
runtime colors/vim.lua
if exists("syntax_on")
    syntax reset
endif


let s:normal_items = [
            \ "ColorColumn", "Comment", "Conceal", "Constant", "Cursor", "CursorColumn",
            \ "CursorIM", "CursorLine", "CursorLineNr", "DiffAdd", "DiffChange",
            \ "DiffDelete", "Directory", "Error", "ErrorMsg", "Identifier",
            \ "IncSearch", "LineNr", "MatchParen", "ModeMsg", "MoreMsg",
            \ "NonText", "Pmenu", "PmenuSbar", "PmenuSel",
            \ "PmenuThumb", "PreProc", "Question", "Search", "SignColumn",
            \ "Special", "SpecialKey", "Statement", "StatusLineNC", "TabLine",
            \ "TabLineFill", "Todo", "Type", "VertSplit", "Visual",
            \ "WarningMsg", "WildMenu",
            \ ]

let s:bold_items = [
            \ "DiffText", "FoldColumn", "Folded", "StatusLine", "TabLineSel",
            \ "Title", "CursorLineNr",
            \ ]

let s:underline_items = [
            \ "Underlined", "VisualNOS"
            \ ]

let s:undercurl_items = [
            \ "SpellBad", "SpellCap", "SpellLocal", "SpellRare"
            \ ]


hi clear Normal
hi Normal gui=none cterm=none term=none
hi Normal guifg=#444444 guibg=#eeeeee

" Clear default settings
for s:item in s:normal_items + s:bold_items + s:underline_items + s:undercurl_items
    exec "hi " . s:item . " guifg=NONE guibg=NONE gui=none"
                \ . " ctermfg=NONE ctermbg=NONE cterm=none term=none"
endfor

let g:colors_name="lucius"


" ----------------------------------------------------------------------------
" Text Markup:
" ----------------------------------------------------------------------------

hi NonText      guifg=#afafd7
hi SpecialKey   guifg=#afd7af
hi Comment      guifg=#808080
hi Conceal      guifg=#808080
hi Constant     guifg=#af5f00
hi Directory    guifg=#00875f
hi Identifier   guifg=#008700
hi PreProc      guifg=#008787
hi Special      guifg=#870087
hi Statement    guifg=#005faf
hi Title        guifg=#005faf
hi Type         guifg=#005f87


" ----------------------------------------------------------------------------
" Highlighting:
" ----------------------------------------------------------------------------

hi Cursor       guifg=bg
hi CursorColumn guifg=NONE
hi CursorIM     guifg=bg
hi CursorLine   guifg=NONE
hi Visual       guifg=NONE
hi VisualNOS    guifg=fg        guibg=NONE
hi CursorColumn                 guibg=#dadada
hi CursorLine                   guibg=#dadada
hi IncSearch    guifg=fg        guibg=#5fd7d7
hi MatchParen   guifg=NONE      guibg=#5fd7d7
hi Search       guifg=fg        guibg=#ffaf00
hi Visual                       guibg=#afd7ff
hi Cursor                       guibg=#5f87af
hi CursorIM                     guibg=#5f87af
hi Error        guifg=#af0000   guibg=#d7afaf
hi Todo         guifg=#875f00   guibg=#ffffaf


" ----------------------------------------------------------------------------
" Messages:
" ----------------------------------------------------------------------------

hi Question     guifg=fg
hi ErrorMsg     guifg=#af0000
hi ModeMsg      guifg=#005faf
hi MoreMsg      guifg=#005faf
hi WarningMsg   guifg=#af5f00


" ----------------------------------------------------------------------------
" UI:
" ----------------------------------------------------------------------------

hi ColorColumn  guifg=NONE
hi Pmenu        guifg=bg
hi PmenuSel     guifg=fg
hi PmenuThumb   guifg=fg
hi StatusLine   guifg=bg
hi TabLine      guifg=bg
hi TabLineSel   guifg=fg
hi WildMenu     guifg=fg
hi ColorColumn                  guibg=#e4e4e4
hi CursorLineNr guifg=#626262   guibg=#dadada
hi FoldColumn                   guibg=#bcbcbc
hi Folded                       guibg=#bcbcbc
hi LineNr       guifg=#9e9e9e   guibg=#dadada
hi PmenuSel                     guibg=#afd7ff
hi SignColumn                   guibg=#d0d0d0
hi StatusLineNC guifg=#dadada
hi TabLineFill  guifg=#dadada
hi VertSplit    guifg=#e4e4e4
hi WildMenu                     guibg=#afd7ff
hi FoldColumn   guifg=#626262
hi Folded       guifg=#626262
hi Pmenu                        guibg=#808080
hi PmenuSbar    guifg=#808080   guibg=#444444
hi PmenuThumb                   guibg=#9e9e9e
hi SignColumn   guifg=#626262
hi StatusLine                   guibg=#808080
hi StatusLineNC                 guibg=#808080
hi TabLine                      guibg=#808080
hi TabLineFill                  guibg=#808080
hi TabLineSel                   guibg=#afd7ff
hi VertSplit                    guibg=#808080


" ----------------------------------------------------------------------------
" Diff:
" ----------------------------------------------------------------------------

hi DiffAdd      guifg=fg
hi DiffChange   guifg=fg
hi DiffDelete   guifg=fg
hi link diffAdded DiffAdd
hi link diffRemoved DiffDelete
hi link diffChanged DiffChange
hi DiffAdd                      guibg=#afd7af
hi DiffChange                   guibg=#d7d7af
hi DiffDelete                   guibg=#d7afaf
hi DiffText                     guibg=#d7d7af
hi DiffText     guifg=#d75f00


" ----------------------------------------------------------------------------
" Spelling:
" ----------------------------------------------------------------------------

hi SpellBad     guisp=#d70000
hi SpellCap     guisp=#00afd7
hi SpellLocal   guisp=#d7af00
hi SpellRare    guisp=#5faf00


" ----------------------------------------------------------------------------
" Miscellaneous:
" ----------------------------------------------------------------------------

hi Ignore       guifg=bg
hi Underlined   guifg=fg


" ============================================================================
" Text Emphasis:
" ============================================================================

for s:item in s:bold_items
    exec "hi " . s:item . " gui=bold"
endfor

for s:item in s:underline_items
    exec "hi " . s:item . " gui=underline"
endfor

for s:item in s:undercurl_items
    exec "hi " . s:item . " gui=undercurl"
endfor

" neovim float:
hi NormalFloat guibg=none
hi FloatBorder guibg=none

" neovim lsp:
hi LspReferenceRead guibg=#dadada
hi link LspReferenceWrite LspReferenceRead
hi link LspReferenceText LspReferenceRead

" neovim treesitter
hi link @symbol Constant
hi link @lsp.typemod.property.declaration Special
hi link @lsp.type.variable Normal

hi link @punctuation Normal
hi link @variable Normal
hi link @type.builtin Type
hi link @tag.delimiter.tsx Statement
hi link @tag.tsx Type
hi link @tag.builtin.tsx Type
" neovim diagnotics
hi DiagnosticFloatingError guibg=#dadada
hi DiagnosticFloatingHint guibg=#dadada
hi DiagnosticFloatingInfo guibg=#dadada
hi DiagnosticFloatingOk guibg=#dadada
hi DiagnosticFloatingWarn guibg=#dadada
lua <<END
for _, diag in ipairs({"Error", "Hint", "Info", "Ok", "Warn"}) do
    local attrs = vim.api.nvim_get_hl(0, { name = "DiagnosticVirtualText" .. diag, link = false })
    attrs.bg = "#dddddd"
    vim.api.nvim_set_hl(0, "DiagnosticVirtualText" .. diag, attrs)
end
END
