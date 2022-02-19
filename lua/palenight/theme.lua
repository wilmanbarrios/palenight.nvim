local color = require('palenight.colors')

local theme = {}

theme.loadEditor = function ()
  local hl = {
		ColorColumn       = { fg = color.none, bg = color.selection }, --  used for the columns set with 'colorcolumn'
		CommandMode       = { fg = color.gray, bg = color.none, style = 'reverse' }, -- Command mode message in the cmdline
		Conceal           = { fg = color.brown }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		CursorColumn      = { fg = color.none, bg = color.line_highlight }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		Cursor            = { fg = color.caret, bg = color.none, style = 'reverse' }, -- the character under the cursor
		CursorIM          = { fg = color.caret, bg = color.none, style = 'reverse' }, -- like Cursor, but used when in IME mode
		CursorLine        = { fg = color.none, bg = color.line_highlight }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
		CursorLineNr      = { fg = color.paleblue }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		DiffAdd           = { fg = color.green, bg = color.none, style = 'reverse' }, -- diff mode: Added line
		DiffChange        = { fg = color.yellow, bg = color.none, style = 'reverse' }, --  diff mode: Changed line
		DiffDelete        = { fg = color.red, bg = color.none, style = 'reverse' }, -- diff mode: Deleted line
		DiffText          = { fg = color.orange, bg = color.none, style = 'reverse' }, -- diff mode: Changed text within a changed line
		Directory         = { fg = color.blue, bg = color.none }, -- directory names (and other special names in listings)
		ErrorMsg          = { fg = color.error }, -- error messages
		FoldColumn        = { fg = color.line_numbers }, -- 'foldcolumn'
		Folded            = { fg = color.brown, bg = color.none, style = 'bold,italic' }, -- line used for closed folds
		FloatBorder       = { fg = color.paleblue, bg = color.bg },
    healthError       = { fg = color.error },
    healthSuccess     = { fg = color.green },
    healthWarning     = { fg = color.yellow },
		IncSearch         = { fg = color.white, bg = color.comments }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		InsertMode        = { fg = color.green, bg = color.none, style = 'reverse' }, -- Insert mode message in the cmdline
		LineNr            = { fg = color.line_numbers }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		MatchParen        = { fg = color.yellow, bg = color.selection, style = 'bold' }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg           = { fg = color.green }, -- 'showmode' message (e.g., "-- INSERT -- ")
		MoreMsg           = { fg = color.green }, -- |more-prompt|
		NonText           = { fg = color.comments }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal            = { fg = color.fg, bg = color.bg },
		NormalFloat       = { fg = color.fg, bg = color.bg }, -- normal text and background color for floating windows
		NormalMode        = { fg = color.pink, bg = color.none }, -- Normal mode message in the cmdline
		Pmenu             = { fg = color.fg, bg = color.selection }, -- Popup menu: normal item.
		PmenuSbar         = { fg = color.none, bg = color.selection }, -- Popup menu: scrollbar.
		PmenuSel          = { fg = color.bg, bg = color.cyan }, -- Popup menu: selected item.
		PmenuThumb        = { fg = color.none, bg = color.comments }, -- Popup menu: Thumb of the scrollbar.
		Question          = { fg = color.blue }, -- |hit-enter| prompt and yes/no questions
		ReplacelMode      = { fg = color.red, bg = color.none, style = 'reverse' }, -- Replace mode message in the cmdline
		Search            = { fg = color.white, bg = color.coments }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SignColumn        = { fg = color.fg, bg = color.bg },
		SpecialKey        = { fg = color.comments }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad          = { fg = color.red, bg = color.none, style = 'italic,undercurl' }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap          = { fg = color.blue, bg = color.none, style = 'italic,undercurl' }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal        = { fg = color.cyan, bg = color.none, style = 'italic,undercurl' }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare         = { fg = color.purple, bg = color.none, style = 'italic,undercurl' }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine        = { fg = color.fg, bg = color.selection }, -- status line of current window
		StatusLineNC      = { fg = color.comments, bg = color.selection }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		StatusLineTerm    = { fg = color.bg, bg = color.green }, -- status line of current terminal window
		StatusLineTermNC  = { fg = color.bg, bg = color.green }, -- status lines of not-current terminal windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		Tabline           = { fg = color.comments, bg = color.bg },
		TabLineFill       = { fg = color.none, bg = color.bg }, -- tab pages line, where there are no labels
		TablineSel        = { fg = color.paleblue, bg = color.selection }, -- tab pages line, active tab page label
		Title             = { fg = color.paleblue }, -- titles for output from ":set all", ":autocmd" etc.
		VertSplit         = { fg = color.comments },
		Visual            = { bg = color.selection }, -- Visual mode selection
		VisualMode        = { fg = color.purple, bg = color.none, style = 'reverse' }, -- Visual mode message in the cmdline
		VisualNOS         = { fg = color.none, bg = color.selection }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg        = { fg = color.orange }, -- warning messages
		Warnings          = { fg = color.orange },
		Whitespace        = { fg = color.fg }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu          = { fg = color.orange, bg = color.none, style = 'bold' }, -- current match in 'wildmenu' completion
	}

  return hl
end

theme.loadSyntax = function ()
  local hl = {
    Boolean             = { fg = color.orange }, -- a boolean constant: TRUE, false
    Character           = { fg = color.orange }, -- any character constant: 'c', '\n'
    Comment             =	{ fg = color.comments, bg = color.none, style = 'italic' }, -- italic comments
    Constant            = { fg = color.orange }, -- any constant
    Debug               = { fg = color.red }, -- debugging statements
    Define              = { fg = color.purple }, -- preprocessor #define
    Delimiter           = { fg = color.cyan }, -- character that needs attention like , or .
    Error               = { fg = color.error, bg = color.none, style = 'bold,underline' }, -- any erroneous construct
    Exception           = { fg = color.purple }, -- try, catch, throw
    Float               = { fg = color.orange }, -- a floating point constant: 2.3e10
    Identifier          = { fg = color.red },
    Ignore              = { fg = color.disabled }, -- left blank, hidden
    Include             = { fg = color.blue }, -- preprocessor #include
    Label               = { fg = color.purple }, -- case, default, etc.
    Macro               = { fg = color.purple }, -- same as Define
    Number              = { fg = color.orange }, -- a number constant: 5
    Operator            = { fg = color.cyan }, -- sizeof", "+", "*", etc.
    PreCondit           = { fg = color.cyan }, -- preprocessor #if, #else, #endif, etc.
    PreProc             = { fg = color.cyan }, -- generic Preprocessor
    SpecialChar         = { fg = color.violet }, -- special character in a constant
    SpecialComment      = { fg = color.gray }, -- special things inside a comment
    Special             = { fg = color.violet }, -- any special symbol
    Statement           = { fg = color.purple }, -- any statement
    -- StorageClass        = { fg = color.cyan }, -- static, register, volatile, etc.
    String              = { fg = color.green, bg = color.none }, -- Any string
    Structure           = { fg = color.cyan }, -- struct, union, enum, etc.
    Tag                 = { fg = color.pink }, -- you can use CTRL-] on this
    Todo                = { fg = color.orange, bg = color.none, style = 'bold,italic' }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Typedef             = { fg = color.red }, -- A typedef
    Type                = { fg = color.yellow }, -- int, long, char, etc.
    Underlined          = { fg = color.link, bg = color.none, style = 'underline' }, -- text that stands out, HTML links
	}

  return hl
end

theme.loadTerminal = function ()
	vim.g.terminal_color_0  = color.black
	vim.g.terminal_color_1  = color.red
	vim.g.terminal_color_2  = color.green
	vim.g.terminal_color_3  = color.yellow
	vim.g.terminal_color_4  = color.blue
	vim.g.terminal_color_5  = color.purple
	vim.g.terminal_color_6  = color.cyan
	vim.g.terminal_color_7  = color.white
	vim.g.terminal_color_8  = color.gray
	vim.g.terminal_color_9  = color.red
	vim.g.terminal_color_10 = color.green
	vim.g.terminal_color_11 = color.yellow
	vim.g.terminal_color_12 = color.blue
	vim.g.terminal_color_13 = color.purple
	vim.g.terminal_color_14 = color.cyan
	vim.g.terminal_color_15 = color.white
end

theme.loadTreeSitter = function ()
  local hl = {
    TSAttribute       = { fg = color.orange },
    TSBoolean         = { fg = color.orange }, -- For booleans.
    TSComment         = { fg = color.comments }, -- For all numbers
    TSConditional     = { fg = color.purple }, -- For all numbers
    TSConstant        = { fg = color.yellow }, -- For constants
    TSConstBuiltin    = { fg = color.orange }, -- For constant that are built in the language: `nil` in Lua.
    TSConstMacro      = { fg = color.yellow }, -- For constants that are defined by macros: `NULL` in C.
    TSConstructor     = { fg = color.yellow }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    TSCurrentScope    = { fg = color.none, bg = color.selection },
    TSDefinition      = { fg = color.none, bg = color.selection },
    TSError           = { fg = color.red }, -- For syntax/parser errors.
    TSException       = { fg = color.purple }, -- For exception related keywords.
    TSFloat           = { fg = color.orange }, -- For floats.
    TSFunction        = { fg = color.blue }, -- For function names.
    TSInclude         = { fg = color.purple }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSKeyword         = { fg = color.purple }, -- For all numbers
    TSKeywordOperator = { fg = color.purple }, -- For all numbers
    TSMethod          = { fg = color.blue }, -- For all numbers
    TSNumber          = { fg = color.orange }, -- For all numbers
    TSNamespace       = { fg = color.yellow },
    TSOperator        = { fg = color.cyan }, -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter       = { fg = color.red }, -- For parameters of a function.
    TSProperty        = { fg = color.fg }, -- Same as `TSField`,accesing for struct members in C.
    TSPunctBracket    = { fg = color.cyan }, -- For brackets and parens.
    TSPunctDelimiter  = { fg = color.cyan }, -- For delimiters ie: `.`
    TSPunctSpecial    = { fg = color.cyan }, -- For special punctutation that does not fall in the catagories before.
    TSString          = { fg = color.green }, -- For strings.
    TSTagAttribute    = { fg = color.purple }, -- Tags like html tag names.
    TSTagDelimiter    = { fg = color.cyan }, -- Tag delimiter like `<` `>` `/`
    TSTag             = { fg = color.pink }, -- Tags like themelhtml tag names.
    TSTitle           = { fg = color.yellow },
    TSTextReference   = { fg = color.blue },
    TSURI             = { fg = color.orange, style = 'underline' },
    TSTypeBuiltin     = { fg = color.purple }, -- For builtin types.
    TSType            = { fg = color.yellow }, -- For types.
    TSUnderline       = { fg = color.none, bg = color.none, style = 'underline' }, -- For text to be represented with an underline.
    TSVariableBuiltin = { fg = color.red }, -- For all numbers
    TSVariable        = { fg = color.fg }, -- For all numbers
    TSWarning         = { fg = color.orange }, -- For all numbers
  }

  return hl
end

theme.loadLSP = function ()
  local hl = {
    LspDiagnosticsDefaultError           = { fg = color.error }, -- used for "Error" diagnostic virtual text
    LspDiagnosticsDefaultHint            = { fg = color.paleblue  },  -- used for "Hint" diagnostic virtual text
    LspDiagnosticsDefaultInformation     = { fg = color.paleblue }, -- used for "Information" diagnostic virtual text
    LspDiagnosticsDefaultWarning         = { fg = color.orange }, -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsError                  = { fg = color.error },
    LspDiagnosticsFloatingError          = { fg = color.error }, -- used for "Error" diagnostic messages in the diagnostics float
    LspDiagnosticsFloatingHint           = { fg = color.paleblue  }, -- used for "Hint" diagnostic messages in the diagnostics float
    LspDiagnosticsFloatingInformation    = { fg = color.paleblue }, -- used for "Information" diagnostic messages in the diagnostics float
    LspDiagnosticsFloatingWarning        = { fg = color.orange }, -- used for "Warning" diagnostic messages in the diagnostics float
    LspDiagnosticsHint                   = { fg = color.purple },
    LspDiagnosticsInformation            = { fg = color.paleblue },
    LspDiagnosticsSignError              = { fg = color.error }, -- used for "Error" diagnostic signs in sign column
    LspDiagnosticsSignHint               = { fg = color.paleblue  }, -- used for "Hint" diagnostic signs in sign column
    LspDiagnosticsSignInformation        = { fg = color.paleblue },  -- used for "Information" diagnostic signs in sign column
    LspDiagnosticsSignWarning            = { fg = color.orange }, -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsUnderlineError         = { style = 'undercurl', sp = color.error }, -- used to underline "Error" diagnostics.
    LspDiagnosticsUnderlineHint          = { style = 'undercurl', sp = color.paleblue }, -- used to underline "Hint" diagnostics.
    LspDiagnosticsUnderlineInformation   = { style = 'undercurl', sp = color.paleblue }, -- used to underline "Information" diagnostics.
    LspDiagnosticsUnderlineWarning       = { style = 'undercurl', sp = color.yellow }, -- used to underline "Warning" diagnostics.
    LspDiagnosticsVirtualTextError       = { fg = color.error }, -- Virtual text "Error"
    LspDiagnosticsVirtualTextHint        = { fg = color.paleblue  }, -- Virtual text "Hint"
    LspDiagnosticsVirtualTextInformation = { fg = color.paleblue }, -- Virtual text "Information"
    LspDiagnosticsVirtualTextWarning     = { fg = color.orange }, -- Virtual text "Warning"
    LspDiagnosticsWarning                = { fg = color.yellow },
    LspReferenceRead                     = { fg = color.green }, -- used for highlighting "read" references
    LspReferenceText                     = { fg = color.green }, -- used for highlighting "text" references
    LspReferenceWrite                    = { fg = color.green }, -- used for highlighting "write" references
  }

  return hl
end

theme.loadPlugins = function()
  local hl = {
    MaterialPink         = { fg = color.pink },

    -- git
    gitcommitDiscardedFile  = { fg = color.red },
    gitcommitDiscardedType  = { fg = color.red },
    gitcommitHeader         = { fg = color.purple },
    gitcommitSelectedFile   = { fg = color.green },
    gitcommitSelectedType   = { fg = color.green },
    gitcommitSummary        = { fg = color.blue },
    gitcommitUnmerged       = { fg = color.green },
    gitcommitUnmergedFile   = { fg = color.yellow },

    -- nvim-cmp
    CmpDocumentation      = { fg = color.fg, bg = color.bg },

    -- Diff
    diffAdded               = { fg = color.green },
    diffChanged             = { fg = color.blue },
    diffFile                = { fg = color.gray },
    diffIndexLine           = { fg = color.purple },
    diffLine                = { fg = color.cyan },
    diffNewFile             = { fg = color.green },
    diffOldFile             = { fg = color.text },
    diffRemoved             = { fg = color.red },

    -- GitSigns
    GitSignsAdd             = { fg = color.green }, -- diff mode: Added line |diff.txt|
    GitSignsAddLn           = { fg = color.green }, -- diff mode: Added line |diff.txt|
    GitSignsAddNr           = { fg = color.green }, -- diff mode: Added line |diff.txt|
    GitSignsChange          = { fg = color.orange }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeLn        = { fg = color.orange }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeNr        = { fg = color.orange }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete          = { fg = color.red }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteLn        = { fg = color.red }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteNr        = { fg = color.red }, -- diff mode: Deleted line |diff.txt|

    -- Telescope
    TelescopeMatching       = { fg = color.yellow },
    TelescopeNormal         = { fg = color.fg, bg = color.bg },
    TelescopePreviewBorder  = { fg = color.paleblue },
    TelescopePromptBorder   = { fg = color.paleblue },
    TelescopePromptPrefix   = { fg = color.red },
    TelescopeResultsBorder  = { fg = color.paleblue },
    TelescopeSelectionCaret = { fg = color.red },
    TelescopeSelection      = { fg = color.none, bg = color.selection },

    -- Express Line
    ElNormal                = { fg = color.paleblue },

    -- NvimTree
    -- NvimTreeRootFolder       = { fg = color.title, style = "italic" },
    -- NvimTreeFolderName       = { fg = color.text },
    -- NvimTreeFolderIcon       = { fg = color.accent },
    -- NvimTreeEmptyFolderName  = { fg = color.disabled },
    -- NvimTreeOpenedFolderName = { fg = color.accent, style = "italic" },
    -- NvimTreeIndentMarker     = { fg = color.disabled },
    -- NvimTreeGitDirty         = { fg = color.blue },
    -- NvimTreeGitNew           = { fg = color.green },
    -- NvimTreeGitStaged        = { fg = color.comments },
    -- NvimTreeGitDeleted       = { fg = color.red },
    -- NvimTreeOpenedFile       = { fg = color.accent },
    -- NvimTreeImageFile        = { fg = color.yellow },
    -- NvimTreeMarkdownFile     = { fg = color.pink },
    -- NvimTreeExecFile         = { fg = color.green },
    -- NvimTreeSpecialFile      = { fg = color.purple , style = "underline" },

    -- Compe
		CompeDocumentation       = { fg = color.fg, bg = color.bg }, -- normal text and background color for floating windows
  }

  return hl
end

return theme
