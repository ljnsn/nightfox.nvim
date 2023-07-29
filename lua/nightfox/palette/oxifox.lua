local C = require("nightfox.lib.color")
local Shade = require("nightfox.lib.shade")

local meta = {
  name = "duskfox",
  light = false,
}

-- stylua: ignore
local palette = {
  black   = Shade.new("#393552", "#716994", "#322e42"),
  red     = Shade.new("#DB6E89", "#FF4262", "#4B2234"),
  green   = Shade.new("#BFDEBA", "#51966B", "#4C674C"),
  yellow  = Shade.new("#D0D6B5", "#f9cb8c", "#A39E52"),
  blue    = Shade.new("#3068ac", "#214760", "#455663"),
  magenta = Shade.new("#94558D", "#B200B2", "#8888C6"),
  cyan    = Shade.new("#0F9795", "#3592C4", "#73A7A7"),
  white   = Shade.new("#e0def4", "#e2e0f7", "#999999"),
  orange  = Shade.new("#F49810", "#F9B5AC", "#AA4926"),
  pink    = Shade.new("#B87EA2", "#F2C4B3", "#AE8ABE"),

  comment = "#5D6976",

  bg0     = "#191726", -- Dark bg (status line and float)
  bg1     = "#172030", -- Default bg
  bg2     = "#23314a", -- Lighter bg (colorcolm folds)
  bg3     = "#2f4264", -- Lighter bg (cursor line)
  bg4     = "#4b4673", -- Conceal, border fg

  fg0     = "#eae8ff", -- Lighter fg
  fg1     = "#C9CCCD", -- Default fg
  fg2     = "#cdcbe0", -- Darker fg (status line)
  fg3     = "#6e6a86", -- Darker fg (line numbers, fold colums)

  sel0    = "#214760", -- Popup bg, visual selection bg
  sel1    = "#63577d", -- Popup sel bg, search bg
  -- sel1    = "#BFDEBA", -- Popup sel bg, search bg
}

local function generate_spec(pal)
  -- stylua: ignore start
  local spec = {
    bg0  = pal.bg0,  -- Dark bg (status line and float)
    bg1  = pal.bg1,  -- Default bg
    bg2  = pal.bg2,  -- Lighter bg (colorcolm folds)
    bg3  = pal.bg3,  -- Lighter bg (cursor line)
    bg4  = pal.bg4,  -- Conceal, border fg

    fg0  = pal.fg0,  -- Lighter fg
    fg1  = pal.fg1,  -- Default fg
    fg2  = pal.fg2,  -- Darker fg (status line)
    fg3  = pal.fg3,  -- Darker fg (line numbers, fold colums)

    sel0 = pal.sel0, -- Popup bg, visual selection bg
    sel1 = pal.sel1, -- Popup sel bg, search bg
  }

  spec.syntax = {
    bracket     = spec.fg2,           -- Brackets and Punctuation
    builtin0    = pal.magenta.base,       -- Builtin variable
    builtin1    = pal.yellow.base,    -- Builtin type
    builtin2    = pal.red.base,  -- Builtin const
    builtin3    = pal.red.bright,     -- Not used
    comment     = pal.comment,        -- Comment
    conditional = pal.red.base, -- Conditional and loop
    const       = pal.pink.base,  -- Constants, imports and booleans
    dep         = spec.fg3,           -- Deprecated
    field       = spec.fg1,      -- Field
    func        = pal.orange.bright,    -- Functions and Titles
    ident       = pal.yellow.base,      -- Identifiers
    keyword     = pal.red.base,   -- Keywords
    number      = pal.pink.bright,    -- Numbers
    operator    = pal.red.base,           -- Operators
    preproc     = pal.pink.bright,    -- PreProc
    regex       = pal.yellow.bright,  -- Regex
    statement   = pal.red.base,   -- Statements
    string      = pal.cyan.dim,     -- Strings
    type        = pal.pink.bright,    -- Types
    variable    = spec.fg1,     -- Variables
  }

  spec.diag = {
    error = pal.red.bright,
    warn  = pal.orange.base,
    info  = pal.cyan.bright,
    hint  = pal.green.base,
  }

  spec.diag_bg = {
    error = C(spec.bg1):blend(C(spec.diag.error), 0.15):to_css(),
    warn  = C(spec.bg1):blend(C(spec.diag.warn), 0.15):to_css(),
    info  = C(spec.bg1):blend(C(spec.diag.info), 0.15):to_css(),
    hint  = C(spec.bg1):blend(C(spec.diag.hint), 0.15):to_css(),
  }

  spec.diff = {
    add    = C(spec.bg1):blend(C(pal.green.bright), 0.2):to_css(),
    delete = C(spec.bg1):blend(C(pal.red.bright), 0.2):to_css(),
    change = C(spec.bg1):blend(C(pal.blue.base), 0.2):to_css(),
    text   = C(spec.bg1):blend(C(pal.blue.base), 0.4):to_css(),
  }

  spec.git = {
    add      = pal.green.bright,
    removed  = pal.red.bright,
    changed  = pal.yellow.bright,
    conflict = pal.orange.dim,
    ignored  = pal.blue.dim,
  }

  -- stylua: ignore start

  return spec
end

return { meta = meta, palette = palette, generate_spec = generate_spec }
