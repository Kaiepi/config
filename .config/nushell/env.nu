# Nushell Environment Config File

let mono_00 = "#000000"
let mono_01 = "#2A2A2A"
let mono_02 = "#666666"
let mono_03 = "#BBBBBB"
let mono_04 = "#FFFFFF"
let reset_0 = $"(ansi -e { fg: $mono_02 })"
let reset_1 = $"(ansi -e { fg: $mono_03 })"

# Use nushell functions to define your right and left prompt
let-env PROMPT_COMMAND = { $"\e[3 q($reset_1)($env.PWD)"}
let-env PROMPT_COMMAND_RIGHT = { $"($reset_1)(date now | date format '%m/%d/%Y %r')" }

# The prompt indicators are environmental variables that represent
# the state of the prompt
let-env PROMPT_INDICATOR = { $"($reset_0)〉" }
let-env PROMPT_INDICATOR_VI_INSERT = { $"($reset_0): " }
let-env PROMPT_INDICATOR_VI_NORMAL = { $"($reset_0)〉" }
let-env PROMPT_MULTILINE_INDICATOR = { $"($reset_0)::: " }

# Specifies how environment variables are:
# - converted from a string to a value on Nushell startup (from_string)
# - converted from a value back to a string when running external commands (to_string)
# Note: The conversions happen *after* config.nu is loaded
let-env ENV_CONVERSIONS = {
  "PATH": {
    from_string: { |s| $s | split row (char esep) | path expand -n }
    to_string: { |v| $v | path expand -n | str join (char esep) }
  }
  "Path": {
    from_string: { |s| $s | split row (char esep) | path expand -n }
    to_string: { |v| $v | path expand -n | str join (char esep) }
  }
}

# Directories to search for scripts when calling source or use
#
# By default, <nushell-config-dir>/scripts is added
let-env NU_LIB_DIRS = [
    ($nu.config-path | path dirname | path join 'scripts')
]

# Directories to search for plugin binaries when calling register
#
# By default, <nushell-config-dir>/plugins is added
let-env NU_PLUGIN_DIRS = [
    ($nu.config-path | path dirname | path join 'plugins')
]

# To add entries to PATH (on Windows you might use Path), you can use the following pattern:
# let-env PATH = ($env.PATH | split row (char esep) | prepend '/some/path')
let-env LC_ALL = "en_CA.UTF-8"
let-env LC_CTYPE = "en_CA.UTF-8"
let-env LANG = "en_CA.UTF-8"
let-env LANGUAGE = "en_CA.UTF-8"

let-env EDITOR = "nvim"
let-env VISUAL = "nvim"
let-env PAGER = "less"

let-env HS_ENCODING = "UTF-8"
let-env IDRIS_CC = "clang"
let-env IDRIS2_CC = "clang"
let-env IDRIS2_CG = "racket"

let-env AUTOMAKE_VERSION = "1.16"
let-env AUTOCONF_VERSION = "2.69"

let-env GDK_USE_XFT = "1"

alias prove6 = env RAKUDOLIB=lib prove -e raku -vr
