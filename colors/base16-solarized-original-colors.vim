" vi:syntax=vim

" base16-solarized-original-colors.vim
" (https://github.com/glandir/base16-solarized-original-colors.vim)
" by Luca Lang
"
" based on
"
" base16-vim (https://github.com/chriskempson/base16-vim)
" by Chris Kempson (http://chriskempson.com)
"
" but with a color mapping more similar to the original
"
" solarized.vim (https://github.com/altercation/vim-colors-solarized)
" by Ethan Schoonover (https://ethanschoonover.com)

if exists("base16colorspace") && base16colorspace == "256"
	let g:base16color = [
		\ "00",
		\ "18",
		\ "19",
		\ "08",
		\ "20",
		\ "07",
		\ "21",
		\ "15",
		\ "01",
		\ "16",
		\ "03",
		\ "02",
		\ "06",
		\ "04",
		\ "05",
		\ "17",
	\ ]
else
	let g:base16color = [
		\ "00",
		\ "10",
		\ "11",
		\ "08",
		\ "12",
		\ "07",
		\ "13",
		\ "15",
		\ "01",
		\ "09",
		\ "03",
		\ "02",
		\ "06",
		\ "04",
		\ "05",
		\ "14",
	\ ]
endif

" Theme setup
hi clear
syntax reset
let g:colors_name = "base16-solarized-original-colors"

function <sid>ln(group, target)
	exec "hi link " . a:group . " " . a:target
endfun

" Takes string
fun <sid>hl(group, ctermfg, ctermbg, cterm)
	if a:ctermfg != ""
		exec "hi " . a:group . " ctermfg=" . a:ctermfg
	endif
	if a:ctermbg != ""
		exec "hi " . a:group . " ctermbg=" . a:ctermbg
	endif
	if a:cterm != ""
		exec "hi " . a:group . " gui=" . a:cterm . " cterm=" . a:cterm
	endif
endfun

fun <sid>hi(group, ctermfg, ctermbg, cterm)
	if a:ctermfg isnot ""
		exec "hi " . a:group . " ctermfg=" . g:base16color[a:ctermfg]
	endif
	if a:ctermbg isnot ""
		exec "hi " . a:group . " ctermbg=" . g:base16color[a:ctermbg]
	endif
	if a:cterm isnot ""
		exec "hi " . a:group . " gui=" . a:cterm . " cterm=" . a:cterm
	endif
endfun

" Vim editor colors
" Text
call <sid>hi("Normal",     "",   "", "")
call <sid>hi("Bold",       "",   "", "bold")
call <sid>hi("Italic",     "",   "", "italic")
call <sid>hi("Underlined", 0x0E, "", "undercurl")

" Messages
call <sid>hi("ErrorMsg",   0x08, 0x00, "bold")
call <sid>hi("WarningMsg", 0x09, 0x00, "bold")
call <sid>hi("ModeMsg",    0x0D, 0x00, "")
call <sid>hi("MoreMsg",    0x0D, 0x00, "")
call <sid>hi("Question",   0x0D, "",   "")

" Highlighting
call <sid>hi("Search",     0x01, 0x0A, "")
call <sid>hi("IncSearch",  0x01, 0x09, "none")
call <sid>hi("Substitute", 0x01, 0x0A, "none")

" Cursor
call <sid>hi("Cursor",       0x00, 0x05, "")
call <sid>hi("CursorColumn", "",   0x01, "")
call <sid>hi("CursorLine",   "",   0x01, "none")
call <sid>hi("MatchParen",   "",   0x03, "")

" Selection
call <sid>hi("Visual",    0x00, 0x02, "")
call <sid>hi("VisualNOS", 0x08, 0x02, "")

" Menus
call <sid>hi("PMenu",        0x05, 0x01, "none")
call <sid>hi("PMenuSel",     0x01, 0x05, "")
call <sid>hi("WildMenu",     0x08, "",   "")
call <sid>hi("QuickFixLine", "",   0x01, "none")

call <sid>hi("Directory", 0x0D, "", "")

" Special inline signs
call <sid>hi("FoldColumn", 0x0C, 0x01, "")
call <sid>hi("Folded",     0x03, 0x01, "")

call <sid>hi("Whitespace", 0x03, "", "")
call <sid>hi("SpecialKey", 0x03, "", "")
call <sid>hi("NonText",    0x03, "", "")
call <sid>hi("Conceal",    0x03, "", "")
call <sid>hi("TooLong",    0x03, "", "")

" Borders
call <sid>hi("StatusLine",   0x04, 0x02, "none")
call <sid>hi("StatusLineNC", 0x03, 0x01, "none")
call <sid>hi("TabLine",      0x03, 0x01, "none")
call <sid>hi("TabLineFill",  0x03, 0x01, "none")
call <sid>hi("TabLineSel",   0x01, 0x05, "none")
call <sid>hi("VertSplit",    0x02, 0x02, "none")

call <sid>hi("LineNr",       0x03, 0x01, "")
call <sid>hi("SignColumn",   0x03, 0x01, "")
call <sid>hi("CursorLineNr", 0x00, 0x02, "")
call <sid>hi("ColorColumn",  "",   0x01, "none")

" Standard syntax highlighting
call <sid>hi("Comment", 0x03, "", "")
"       *Comment         any comment

call <sid>hi("Constant", 0x0C, "", "")
"       *Constant        any constant
"        String          a string constant: "this is a string"
"        Character       a character constant: 'c', '\n'
"        Number          a number constant: 234, 0xff
"        Boolean         a boolean constant: TRUE, false
"        Float           a floating point constant: 2.3e10
call <sid>hi("Identifier", 0x0D, "", "none")
"       *Identifier      any variable name
"        Function        function name (also: methods for classes)
call <sid>hi("Statement", 0x0B, "", "")
"       *Statement       any statement
"        Conditional     if, then, else, endif, switch, etc.
"        Repeat          for, do, while, etc.
"        Label           case, default, etc.
"        Operator        "sizeof", "+", "*", etc.
"        Keyword         any other keyword
"        Exception       try, catch, throw

call <sid>hi("PreProc", 0x09, "", "")
"       *PreProc         generic Preprocessor
"        Include         preprocessor #include
"        Define          preprocessor #define
"        Macro           same as Define
"        PreCondit       preprocessor #if, #else, #endif, etc.

call <sid>hi("Type", 0x0A, "", "")
"       *Type            int, long, char, etc.
call <sid>ln("StorageClass", "Keyword")
call <sid>ln("Structure", "Keyword")
call <sid>ln("Typedef", "Keyword")
"        StorageClass    static, register, volatile, etc.
"        Structure       struct, union, enum, etc.
"        Typedef         A typedef

call <sid>hi("Special", 0x0E, "", "")
"       *Special         any special symbol
"        SpecialChar     special character in a constant
"        Tag             you can use CTRL-] on this
"        Delimiter       character that needs attention
"        SpecialComment  special things inside a comment
"        Debug           debugging statements
"        SpecialKey

" call <sid>hi("Underlined", 0x0E, "", "underline")
"       *Underlined      text that stands out, HTML links

call <sid>hl("Ignore", "none", "none", "none")
"       *Ignore          left blank, hidden  |hl-Ignore|

call <sid>hl("Error", "",   "none", "bold")
call <sid>hi("Error", 0x08, "",     "")
"       *Error           any erroneous construct

call <sid>hl("Todo", "", "none", "bold")
call <sid>hi("Todo", 0x0E, "", "")
"       *Todo            anything that needs extra attention; mostly the
"                        keywords TODO FIXME and XXX

call <sid>hi("Title", 0x09, "", "bold")

" C highlighting
"   call <sid>hi("cOperator",  0x0C, "", "")
"   call <sid>hi("cPreCondit", 0x0E, "", "")

" C++ highlighting
call <sid>ln("cppModifier", "Keyword")

" C# highlighting
"   call <sid>hi("csClass",                0x0A, "", "")
"   call <sid>hi("csAttribute",            0x0A, "", "")
"   call <sid>hi("csModifier",             0x0E, "", "")
"   call <sid>hi("csType",                 0x08, "", "")
"   call <sid>hi("csUnspecifiedStatement", 0x0D, "", "")
"   call <sid>hi("csContextualStatement",  0x0E, "", "")
"   call <sid>hi("csNewDecleration",       0x08, "", "")

" CSS highlighting
"   call <sid>hi("cssBraces",    0x05, "", "")
"   call <sid>hi("cssClassName", 0x0E, "", "")
"   call <sid>hi("cssColor",     0x0C, "", "")

" Diff highlighting
call <sid>hi("DiffAdd",     0x0B, 0x01, "")
call <sid>hi("DiffChange",  0x03, 0x01, "")
call <sid>hi("DiffDelete",  0x08, 0x01, "")
call <sid>hi("DiffText",    0x0D, 0x01, "")
call <sid>hi("DiffAdded",   0x0B, 0x00, "")
call <sid>hi("DiffFile",    0x08, 0x00, "")
call <sid>hi("DiffNewFile", 0x0B, 0x00, "")
call <sid>hi("DiffLine",    0x0D, 0x00, "")
call <sid>hi("DiffRemoved", 0x08, 0x00, "")

" Git highlighting
call <sid>hi("gitcommitOverflow",      0x08, "", "")
call <sid>hi("gitcommitSummary",       0x0B, "", "")
call <sid>hi("gitcommitComment",       0x03, "", "")
call <sid>hi("gitcommitUntracked",     0x03, "", "")
call <sid>hi("gitcommitDiscarded",     0x03, "", "")
call <sid>hi("gitcommitSelected",      0x03, "", "")
call <sid>hi("gitcommitHeader",        0x0E, "", "")
call <sid>hi("gitcommitSelectedType",  0x0D, "", "")
call <sid>hi("gitcommitUnmergedType",  0x0D, "", "")
call <sid>hi("gitcommitDiscardedType", 0x0D, "", "")
call <sid>hi("gitcommitBranch",        0x09, "", "bold")
call <sid>hi("gitcommitUntrackedFile", 0x0A, "", "")
call <sid>hi("gitcommitUnmergedFile",  0x08, "", "bold")
call <sid>hi("gitcommitDiscardedFile", 0x08, "", "bold")
call <sid>hi("gitcommitSelectedFile",  0x0B, "", "bold")

" GitGutter highlighting
call <sid>hi("GitGutterAdd",          0x0B, 0x01, "")
call <sid>hi("GitGutterChange",       0x0D, 0x01, "")
call <sid>hi("GitGutterDelete",       0x08, 0x01, "")
call <sid>hi("GitGutterChangeDelete", 0x0E, 0x01, "")

" HTML highlighting
"   call <sid>hi("htmlBold",   0x0A, "", "")
"   call <sid>hi("htmlItalic", 0x0E, "", "")
"   call <sid>hi("htmlEndTag", 0x05, "", "")
"   call <sid>hi("htmlTag",    0x05, "", "")

" JavaScript highlighting
"   call <sid>hi("javaScript",       0x05, "", "")
"   call <sid>hi("javaScriptBraces", 0x05, "", "")
"   call <sid>hi("javaScriptNumber", 0x09, "", "")
" pangloss/vim-javascript highlighting
"   call <sid>hi("jsOperator",          0x0D, "", "")
"   call <sid>hi("jsStatement",         0x0E, "", "")
"   call <sid>hi("jsReturn",            0x0E, "", "")
"   call <sid>hi("jsThis",              0x08, "", "")
"   call <sid>hi("jsClassDefinition",   0x0A, "", "")
"   call <sid>hi("jsFunction",          0x0E, "", "")
"   call <sid>hi("jsFuncName",          0x0D, "", "")
"   call <sid>hi("jsFuncCall",          0x0D, "", "")
"   call <sid>hi("jsClassFuncName",     0x0D, "", "")
"   call <sid>hi("jsClassMethodType",   0x0E, "", "")
"   call <sid>hi("jsRegexpString",      0x0C, "", "")
"   call <sid>hi("jsGlobalObjects",     0x0A, "", "")
"   call <sid>hi("jsGlobalNodeObjects", 0x0A, "", "")
"   call <sid>hi("jsExceptions",        0x0A, "", "")
"   call <sid>hi("jsBuiltins",          0x0A, "", "")

" Mail highlighting
"   call <sid>hi("mailQuoted1", 0x0A, "", "")
"   call <sid>hi("mailQuoted2", 0x0B, "", "")
"   call <sid>hi("mailQuoted3", 0x0E, "", "")
"   call <sid>hi("mailQuoted4", 0x0C, "", "")
"   call <sid>hi("mailQuoted5", 0x0D, "", "")
"   call <sid>hi("mailQuoted6", 0x0A, "", "")
"   call <sid>hi("mailURL",     0x0D, "", "")
"   call <sid>hi("mailEmail",   0x0D, "", "")

" Markdown highlighting
"   call <sid>hi("markdownCode",             0x0B, "",   "")
"   call <sid>hi("markdownError",            0x05, 0x00, "")
"   call <sid>hi("markdownCodeBlock",        0x0B, "",   "")
"   call <sid>hi("markdownHeadingDelimiter", 0x0D, "",   "")

" NERDTree highlighting
"   call <sid>hi("NERDTreeDirSlash", 0x0D, "", "")
"   call <sid>hi("NERDTreeExecFile", 0x05, "", "")

" PHP highlighting
"   call <sid>hi("phpMemberSelector", 0x05, "", "")
"   call <sid>hi("phpComparison",     0x05, "", "")
"   call <sid>hi("phpParent",         0x05, "", "")
"   call <sid>hi("phpMethodsVar",     0x0C, "", "")

" Python highlighting
"   call <sid>hi("pythonOperator",  0x0E, "", "")
"   call <sid>hi("pythonRepeat",    0x0E, "", "")
"   call <sid>hi("pythonInclude",   0x0E, "", "")
"   call <sid>hi("pythonStatement", 0x0E, "", "")

" Ruby highlighting
"   call <sid>hi("rubyAttribute",              0x0D, "", "")
"   call <sid>hi("rubyConstant",               0x0A, "", "")
"   call <sid>hi("rubyInterpolationDelimiter", 0x0F, "", "")
"   call <sid>hi("rubyRegexp",                 0x0C, "", "")
"   call <sid>hi("rubySymbol",                 0x0B, "", "")
"   call <sid>hi("rubyStringDelimiter",        0x0B, "", "")

" SASS highlighting
"   call <sid>hi("sassidChar",    0x08, "", "")
"   call <sid>hi("sassClassChar", 0x09, "", "")
"   call <sid>hi("sassInclude",   0x0E, "", "")
"   call <sid>hi("sassMixing",    0x0E, "", "")
"   call <sid>hi("sassMixinName", 0x0D, "", "")

" Signify highlighting
"   call <sid>hi("SignifySignAdd",    0x0B, 0x01, "")
"   call <sid>hi("SignifySignChange", 0x0D, 0x01, "")
"   call <sid>hi("SignifySignDelete", 0x08, 0x01, "")

" Spelling highlighting
"   call <sid>hi("SpellBad",   "", "", "undercurl")
"   call <sid>hi("SpellLocal", "", "", "undercurl")
"   call <sid>hi("SpellCap",   "", "", "undercurl")
"   call <sid>hi("SpellRare",  "", "", "undercurl")

" Startify highlighting
"   call <sid>hi("StartifyBracket", 0x03, "", "")
"   call <sid>hi("StartifyFile",    0x07, "", "")
"   call <sid>hi("StartifyFooter",  0x03, "", "")
"   call <sid>hi("StartifyHeader",  0x0B, "", "")
"   call <sid>hi("StartifyNumber",  0x09, "", "")
"   call <sid>hi("StartifyPath",    0x03, "", "")
"   call <sid>hi("StartifySection", 0x0E, "", "")
"   call <sid>hi("StartifySelect",  0x0C, "", "")
"   call <sid>hi("StartifySlash",   0x03, "", "")
"   call <sid>hi("StartifySpecial", 0x03, "", "")

" Java highlighting
"   call <sid>hi("javaOperator", 0x0D, "", "")

" Remove functions
delf <sid>hl
delf <sid>hi

