--
-- Built with,
-- Lush

local lush = require("lush")
local hsl = lush.hsl

local colors = {
	accent = "#ff6ac1",
	fg = "#eff0eb",
	alt_bg = "#1a1c35",
	white = "#eff0eb",
	alt_white = "#40414A",
	gray = "#606580",
	light_gray = "#3a3d4d",
	blue = "#57c7ff",
  light_blue = "#9aedfe",
	gray_blue = "#606580",
	cyan = "#9aedfe",
	red = "#ff5c57",
	green = "#5af78e",
	light_green = "#57c7aa",
	yellow = "#f3f99d",
	orange = "#ffbc58",
	purple = "#ff00ff",
	pale_purple = "#7199ee",
	magenta = "#ff6ac1",
}

local theme = lush(function()
	return {
		-- The following are all the Neovim default highlight groups from the docs
		-- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
		-- probably style all of these at a bare minimum.
		--
		-- Referenced/linked groups must come before being referenced/lined,
		-- so the order shown ((mostly) alphabetical) is likely
		-- not the order you will end up with.
		--
		-- You can uncomment these and leave them empty to disable any
		-- styling for that group (meaning they mostly get styled as Normal)
		-- or leave them commented to apply vims default colouring or linking.

		Normal({ bg = hsl("#141622"), fg = hsl("#eff0eb") }), -- normal text
		Comment({ fg = hsl(210, 1, 41), gui = "italic" }), -- any comment
		ColorColumn({}), -- used for the columns set with 'colorcolumn'
		Conceal({}), -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor({ fg = hsl("#838387"), bg = hsl(229, 26, 17) }), -- character under the cursor
		lCursor({}), -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM({}), -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn({}), -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine({ bg = hsl(229, 26, 17) }), -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
		Directory({ fg = hsl(colors.pale_purple) }), -- directory names (and other special names in listings)
		DiffAdd({ fg = hsl(colors.green) }), -- diff mode: Added line |diff.txt|
		DiffChange({ fg = hsl(colors.yellow) }), -- diff mode: Changed line |diff.txt|
		DiffDelete({ fg = hsl(colors.red) }), -- diff mode: Deleted line |diff.txt|
		-- DiffText     { }, -- diff mode: Changed text within a changed line |diff.txt|
		-- EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		-- TermCursor   { }, -- cursor in a focused terminal
		-- TermCursorNC { }, -- cursor in an unfocused terminal
		-- ErrorMsg     { }, -- error messages on the command line
		VertSplit({ Normal, fg = hsl(210, 1, 41) }), -- the column separating vertically split windows
		Folded({ Normal, bg = hsl("#141622") }), -- line used for closed folds
		-- FoldColumn   { }, -- 'foldcolumn'
		SignColumn({}), -- column where |signs| are displayed
		IncSearch({ bg = hsl(colors.alt_white) }), -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		Substitute({ IncSearch }), -- |:substitute| replacement text highlighting
		LineNr({ fg = hsl(colors.gray) }), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr({}), -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		MatchParen({ bg = hsl(colors.alt_white), gui = "bold" }), -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		-- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea      { }, -- Area for messages and cmdline
		-- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg({ Normal }), -- |more-prompt|
		NonText({ Comment }), -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		NormalFloat({ Normal, bg = hsl("#232631") }), -- Normal text in floating windows.
		-- NormalNC     { }, -- normal text in non-current windows
		Pmenu({ NormalFloat }), -- Popup menu: normal item.
		PmenuSel({ NormalFloat, bg = hsl("#40414A") }), -- Popup menu: selected item.
		PmenuSbar({ Pmenu }), -- Popup menu: scrollbar.
		PmenuThumb({ PmenuSel }), -- Popup menu: Thumb of the scrollbar.
		Question({ Normal }), -- |hit-enter| prompt and yes/no questions
		QuickFixLine({ bg = hsl(colors.alt_white) }), -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search({ fg = hsl(colors.white), bg = hsl("#A07E51").desaturate(50) }), -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		-- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad({ fg = hsl(colors.red), gui = "underline" }), -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		-- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		-- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		-- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		-- StatusLine   { bg=hsl(colors.alt_white)}, -- status line of current window
		-- StatusLineNC { }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		-- TabLine      { fg=hsl(colors.red) }, -- tab pages line, not active tab page label
		-- TabLineFill  { }, -- tab pages line, where there are no labels
		-- TabLineSel   { }, -- tab pages line, active tab page label
		Title        { fg=hsl(colors.white), gui="underline" }, -- titles for output from ":set all", ":autocmd" etc.
		Visual({ bg = NormalFloat.bg.lighten(10) }), -- Visual mode selection
		-- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg({ fg = hsl(colors.red).desaturate(50) }), -- warning messages
		Whitespace({ NormalFloat }), -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu({ NormalFloat }), -- current match in 'wildmenu' completion

		-- These groups are not listed as default vim groups,
		-- but they are defacto standard group names for syntax highlighting.
		-- commented out groups should chain up to their "preferred" group by
		-- default,
		-- Uncomment and edit if you want more specific syntax highlighting.

		Constant({ fg = hsl("#ffbc58") }), -- (preferred) any constant
		String({ fg = hsl(colors.green), bg = "a" }), --   a string constant: "this is a string"
		Character({ String }), --  a character constant: 'c', '\n'
		Number({ fg = hsl("#ffbc58") }), --   a number constant: 234, 0xff
		Boolean({ fg = hsl("#b76aff") }), --  a boolean constant: TRUE, false
		-- Float          { }, --    a floating point constant: 2.3e10

		Identifier({ fg = hsl(colors.orange) }), -- (preferred) any variable name
		Function({ fg = hsl(colors.blue) }), -- function name (also: methods for classes)

		Statement({ fg = hsl(colors.magenta) }), -- (preferred) any statement
		Conditional({ fg = hsl(colors.magenta) }), --  if, then, else, endif, switch, etc.
		-- Repeat         { }, --   for, do, while, etc.
		Label({ Identifier }), --    case, default, etc.
		-- Operator       { }, -- "sizeof", "+", "*", etc.
		Keyword({ fg = hsl(colors.orange) }), --  any other keyword
		Exception({ fg = hsl(colors.red) }), --  try, catch, throw

		-- PreProc        { }, -- (preferred) generic Preprocessor
		-- Include        { }, --  preprocessor #include
		-- Define         { }, --   preprocessor #define
		-- Macro          { }, --    same as Define
		-- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

		Type({ fg = hsl(colors.light_blue) }), -- (preferred) int, long, char, etc.
		StorageClass({ fg = hsl("#ffbc58") }), -- static, register, volatile, etc.
		-- Structure      { }, --  struct, union, enum, etc.
		-- Typedef        { }, --  A typedef

		Special({ Conditional }), -- (preferred) any special symbol
		-- SpecialChar    { }, --  special character in a constant
		-- Tag            { }, --    you can use CTRL-] on this
		-- Delimiter      { }, --  character that needs attention
		-- SpecialComment { }, -- special things inside a comment
		Debug({ fg = hsl(colors.red), gui = "bold" }), --    debugging statements

		Underlined { fg=hsl(colors.blue),gui = "underline" }, -- (preferred) text that stands out, HTML links
		-- Bold       { gui = "bold" },
		-- Italic     { gui = "italic" },

		-- ("Ignore", below, may be invisible...)
		-- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

		Error({ fg = hsl(colors.red), gui = "underline" }), -- (preferred) any erroneous construct

		Todo({ fg = hsl(colors.magenta), gui = "underline" }), -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		-- These groups are for the native LSP client. Some other LSP clients may
		-- use these groups, or use their own. Consult your LSP client's
		-- documentation.

		-- LspReferenceText                     { }, -- used for highlighting "text" references
		-- LspReferenceRead                     { }, -- used for highlighting "read" references
		-- LspReferenceWrite                    { }, -- used for highlighting "write" references

		LspDiagnosticsDefaultError({ fg = hsl(colors.red) }), -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		LspDiagnosticsDefaultWarning({ fg = hsl(colors.pale_purple).lighten(40) }), -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		LspDiagnosticsDefaultInformation({}), -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		LspDiagnosticsDefaultHint({}), -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

		-- LspDiagnosticsVirtualTextError       { }, -- Used for "Error" diagnostic virtual text
		-- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
		-- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
		-- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

		-- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
		-- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
		-- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
		-- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

		-- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
		-- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
		-- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
		-- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

		-- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
		-- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
		-- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
		-- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

		-- These groups are for the neovim tree-sitter highlights.
		-- As of writing, tree-sitter support is a WIP, group names may change.
		-- By default, most of these groups link to an appropriate Vim group,
		-- TSError -> Error for example, so you do not have to define these unless
		-- you explicitly want to support Treesitter's improved syntax awareness.

		-- TSAnnotation({ gui = "underline" }), -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
		-- TSAttribute({}), -- (unstable) TODO: docs
		-- TSBoolean({}), -- For booleans.
		-- TSCharacter({}), -- For characters.
		-- TSComment({}), -- For comment blocks.
		-- TSConditional({}), -- For keywords related to conditionnals.
		-- -- TSConstant({ gui = "underline" }), -- For constants
		-- TSConstBuiltin({}), -- For constant that are built in the language: `nil` in Lua.
		-- TSConstMacro({}), -- For constants that are defined by macros: `NULL` in C.
		-- TSError({}), -- For syntax/parser errors.
		-- TSException({}), -- For exception related keywords.
		-- TSField({}), -- For fields.
		-- TSFloat({}), -- For floats.
		-- -- TSFunction({ fg = hsl(colors.white), gui = "underline" }), -- For function (calls and definitions).
		-- TSFuncBuiltin({}), -- For builtin functions: `table.insert` in Lua.
		-- TSFuncMacro({}), -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		-- TSInclude({}), -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		-- TSKeyword({}), -- For keywords that don't fall in previous categories.
		-- TSKeywordFunction({}), -- For keywords used to define a fuction.
		-- TSLabel({}), -- For labels: `label:` in C and `:label:` in Lua.
		-- TSMethod({}), -- For method calls and definitions.
		-- TSNamespace({}), -- For identifiers referring to modules and namespaces.
		-- TSNone({}), -- TODO: docs
		-- TSNumber({}), -- For all numbers
		-- TSOperator({}), -- For any operator: `+`, but also `->` and `*` in C.
		-- TSParameter({}), -- For parameters of a function.
		-- TSParameterReference({}), -- For references to parameters of a function.
		-- TSProperty({}), -- Same as `TSField`.
		-- TSPunctDelimiter({}), -- For delimiters ie: `.`
		-- TSPunctBracket({}), -- For brackets and parens.
		-- TSPunctSpecial({}), -- For special punctutation that does not fall in the catagories before.
		-- TSRepeat({}), -- For keywords related to loops.
		-- TSString({}), -- For strings.
		-- TSStringRegex({}), -- For regexes.
		-- TSStringEscape({}), -- For escape characters within a string.
		-- TSSymbol({}), -- For identifiers referring to symbols or atoms.
		-- TSType({}), -- For types.
		-- TSTypeBuiltin({}), -- For builtin types.
		-- TSVariable({ fg=hsl(colors.gray_blue) }), -- Any variable name that does not have another highlight.
		-- TSTagDelimiter({}), -- Tag delimiter like `<` `>` `/`
		-- TSText({}), -- For strings considered text in a markup language.
		-- TSEmphasis({}), -- For text to be represented with emphasis.
		-- TSUnderline({}), -- For text to be represented with an underline.
		-- TSStrike({}), -- For strikethrough text.
		-- TSTitle({}), -- Text that is part of a title.
		-- TSLiteral({}), -- Literal text.
		-- TSURI({}), -- Any URI like a link or email.

    TSTag({fg=hsl(colors.magenta)}),
		TSTagDelimiter({ fg=hsl(colors.blue) }),
		TSConstructor({ fg=hsl(colors.blue) }),
    TSTagAttribute({ fg=hsl(colors.light_blue)}),

		WhichKey({ fg = colors.magenta }),
		WhichKeySeperator({ fg = colors.green }),
		WhichKeyDesc({ fg = colors.white }),
		WhichKeyGroup({ fg = colors.pale_purple }),
		WhichKeyFloat({ bg = hsl("#232631") }),

		markdownBlockquote({ fg = colors.accent }),
		markdownBold({ fg = colors.yellow, style = "bold" }),
		markdownCode({ fg = colors.green }),
		markdownCodeBlock({ fg = colors.green }),
		markdownCodeDelimiter({ fg = colors.green }),
		markdownH1({ fg = colors.blue }),
		markdownH2({ fg = colors.blue }),
		markdownH3({ fg = colors.blue }),
		markdownH4({ fg = colors.blue }),
		markdownH5({ fg = colors.blue }),
		markdownH6({ fg = colors.blue }),
		markdownHeadingDelimiter({ fg = colors.red }),
		markdownHeadingRule({ fg = colors.accent }),
		markdownId({ fg = colors.magenta }),
		markdownIdDeclaration({ fg = colors.blue }),
		markdownIdDelimiter({ fg = colors.light_gray }),
		markdownLinkDelimiter({ fg = colors.light_gray }),
		markdownItalic = { style("italic") },
		markdownLinkText({ fg = colors.blue }),
		markdownListMarker({ fg = colors.red }),
		markdownOrderedListMarker({ fg = colors.red }),
		markdownRule({ fg = colors.accent }),
		markdownUrl({ fg = colors.pale_purple, style = "underline" }),

		TelescopeSelection({ fg = colors.blue }),
		TelescopeMatching({ fg = colors.yellow, style = "bold" }),
		TelescopeBorder({ fg = colors.cyan }),

		NvimTreeFolderIcon({ fg = colors.blue }),
		NvimTreeIndentMarker({ fg = colors.gray }),
		NvimTreeNormal({ fg = colors.white }),
		NvimTreeVertSplit({ fg = colors.alt_bg }),
		NvimTreeFolderName({ fg = colors.blue }),
		NvimTreeOpenedFolderName({ fg = colors.cyan, style = "italic" }),
		NvimTreeImageFile({ fg = colors.purple }),
		NvimTreeSpecialFile({ fg = colors.orange }),
		NvimTreeGitStaged({ DiffAdd }),
		NvimTreeGitNew({ fg = colors.magenta }),
		NvimTreeGitDirty({ DiffChange }),
		NvimTreeGitDeleted({ DiffDelete }),
		NvimTreeGitMerge({ DiffChange }),
		NvimTreeGitRenamed({ DiffChange }),
		NvimTreeSymlink({ fg = colors.blue }),
		NvimTreeRootFolder({ fg = colors.fg, style = "bold" }),
		NvimTreeExecFile({ fg = colors.green }),

		BufferCurrent({ fg = colors.white }),
		BufferCurrentSign({ fg = colors.white }),
		BufferCurrentMod({ fg = colors.white, gui = "bold" }),
		BufferVisible({ fg = colors.pale_purple }),
		BufferVisibleIcon({ fg = colors.pale_purple }),
		BufferVisibleMod({ fg = colors.pale_purple, gui = "bold" }),
		BufferInactive({ Comment }),
		BufferInactiveMod({ Comment, gui = "bold" }),
		BufferInactiveSign({ Comment }),
		BufferTabPages({ Comment }),
		BufferTabPageFill({ bg = Normal.bg.darken(25) }),
		BufferOffset({ BufferTabPageFill }),
	}
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
