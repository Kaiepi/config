let g:easy_align_delimiters = {
\   's': {
\       'pattern': '\(const\s\+\)\=\(unsigned\s\+\(long\s\+\)\{0,2}\|\(struct\|enum\|union\)\s\+\({[^}]\+}\s\+\)\=\)\=\S\+\s*\**\s*\(const\s\+\)\=',
\       'left_margin': 0,
\       'right_margin': 0,
\       'delimiter_align': 'l',
\   },
\}

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
