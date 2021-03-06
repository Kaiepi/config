let g:easy_align_delimiters = {
\   's': {
\	   'pattern': ':\?\(\$\|@\|&\|%\|\\\|\*\|+\)',
\      'left_margin': 1,
\      'right_margin': 0,
\      'ignore_unmatched': 1,
\      'ignore_groups': ['String', 'Comment'],
\	},
\   't': {
\      'pattern': '\ze\s\(is\|does\|will\|where\|=\)',
\      'left_margin': 1,
\      'right_margin': 0,
\      'ignore_unmatched': 1,
\      'ignore_groups': ['String', 'Comment'],
\  },
\}

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

setlocal iskeyword+=-

iabbrev <buffer> >> »
iabbrev <buffer> >>. ».
iabbrev <buffer> << «
iabbrev <buffer> !(<=) ⊈
iabbrev <buffer> !(>)  ⊅
iabbrev <buffer> !(>=) ⊉
iabbrev <buffer> !(cont) ∌
iabbrev <buffer> !(elem) ∉
iabbrev <buffer> (&) ∩
iabbrev <buffer> (+) ⊎
iabbrev <buffer> (-) ∖
iabbrev <buffer> (.) ⊍
iabbrev <buffer> (<) ⊂
iabbrev <buffer> (<+) ≼
iabbrev <buffer> (<=) ⊆
iabbrev <buffer> (>) ⊃
iabbrev <buffer> (>+) ≽
iabbrev <buffer> (>=) ⊇
iabbrev <buffer> (\|) ∪
iabbrev <buffer> (^) ⊖
iabbrev <buffer> (atomic) ⚛
iabbrev <buffer> (cont) ∋
iabbrev <buffer> (elem) ∈
iabbrev <buffer> <<[=]<< «=«
iabbrev <buffer> <<[=]>> «=»
iabbrev <buffer> >>[=]<< »=«
iabbrev <buffer> >>[=]>> »=»
iabbrev <buffer> atomic-add-fetch ⚛+=
iabbrev <buffer> atomic-assign ⚛=
iabbrev <buffer> atomic-fetch ⚛
iabbrev <buffer> atomic-dec-fetch --⚛
iabbrev <buffer> atomic-fetch-dec ⚛--
iabbrev <buffer> atomic-fetch-inc ⚛++
iabbrev <buffer> atomic-inc-fetch ++⚛
iabbrev <buffer> atomic-sub-fetch ⚛−=
iabbrev <buffer> set() ∅
iabbrev <buffer> o ∘
