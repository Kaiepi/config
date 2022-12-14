# Nushell Environment Config File

# Palette operations
module cswap {
  def color [] {
    [
      '#2A2A2A'
      '#FF0000'
      '#79FF0F'
      '#D3BF00'
      '#396BD7'
      '#B449BE'
      '#66CCFF'
      '#BBBBBB'
      '#666666'
      '#FF0080'
      '#66FF66'
      '#F3D64E'
      '#709AED'
      '#DB57E6'
      '#7ADFF2'
      '#FFFFFF'
    ]
  }

  def shade [] {
    [
      (cswap color 0)
      (cswap color 8)
      (cswap color 7)
      (cswap color 15)
    ]
  }

  export def 'cswap color' [id: int] {
    color | get $id
  }

  export def 'cswap shade' [id: int] {
    shade | get $id
  }

  export def 'cswap enter' [] {
    $"(ansi -e { fg: (cswap shade 3) })"
  }

  export def 'cswap leave' [] {
    $"(ansi -e { fg: (cswap shade 1) })"
  }

  export def 'cswap theme' [] {
    {
      separator: (cswap shade 1)
      leading_trailing_space_bg: { fg: (cswap shade 2) }
      header: (cswap shade 3)
      empty: (cswap shade 2)
      bool: (cswap shade 2)
      int: (cswap shade 2)
      filesize: (cswap shade 2)
      duration: (cswap shade 2)
      date: (cswap shade 2)
      range: (cswap shade 2)
      float: (cswap shade 2)
      string: (cswap shade 2)
      nothing: (cswap shade 2)
      binary: (cswap shade 2)
      cellpath: (cswap shade 2)
      row_index: (cswap shade 3)
      record: (cswap shade 2)
      list: (cswap shade 2)
      block: (cswap shade 2)
      hints: (cswap shade 0)

      shape_garbage: { fg: (cswap shade 1) }
      shape_binary: (cswap shade 2)
      shape_bool: (cswap shade 2)
      shape_int: (cswap shade 2)
      shape_float: (cswap shade 2)
      shape_range: (cswap shade 2)
      shape_internalcall: (cswap shade 2)
      shape_external: (cswap shade 2)
      shape_externalarg: (cswap shade 2)
      shape_literal: (cswap shade 2)
      shape_operator: (cswap shade 2)
      shape_signature: (cswap shade 2)
      shape_string: (cswap shade 2)
      shape_string_interpolation: (cswap shade 2)
      shape_datetime: (cswap shade 2)
      shape_list: (cswap shade 2)
      shape_table: (cswap shade 2)
      shape_record: (cswap shade 2)
      shape_block: (cswap shade 2)
      shape_filepath: (cswap shade 2)
      shape_directory: (cswap shade 2)
      shape_globpattern: (cswap shade 2)
      shape_variable: (cswap shade 2)
      shape_flag: (cswap shade 2)
      shape_custom: (cswap shade 2)
      shape_pipe: (cswap shade 2)
      shape_redirection: (cswap shade 2)
      shape_and: (cswap shade 2)
      shape_or: (cswap shade 2)
      shape_nothing: (cswap shade 2)
    }
  }
}

use cswap *

# Use nushell functions to define your right and left prompt
let-env PROMPT_COMMAND = { $"\e[3 q(cswap enter)($env.PWD)"}
let-env PROMPT_COMMAND_RIGHT = { $"(cswap enter)(date now | date format '%m/%d/%Y %r')" }

# The prompt indicators are environmental variables that represent
# the state of the prompt
let-env PROMPT_INDICATOR = { $"(cswap leave)〉" }
let-env PROMPT_INDICATOR_VI_INSERT = { $"(cswap leave): " }
let-env PROMPT_INDICATOR_VI_NORMAL = { $"(cswap leave)〉" }
let-env PROMPT_MULTILINE_INDICATOR = { $"(cswap leave)::: " }

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
