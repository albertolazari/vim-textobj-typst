" textobj-typst - Text objects for Typst

if exists('g:loaded_textobj_typst')
  finish
endif

call textobj#user#plugin('typst', {
\  'math-inline-equation-a': {
\     '*pattern*': '[$][^$]\=[$]\|[$]\S[^$]\{-}\S[$]',
\     'select': 'am',
\   },
\  'math-inline-equation-i': {
\     '*pattern*': '[$][$]\|[$]\zs[^$]\=\ze[$]\|[$]\zs\S[^$]\{-}\S\ze[$]',
\     'select': 'im',
\   },
\  'math-block-equation-a': {
\     '*pattern*': '[$]\s\_.\{-}\s[$]',
\     'select': 'aM',
\   },
\  'math-block-equation-i': {
\     '*pattern*': '[$]\zs\s\s\ze[$]\|[$]\s\zs\_.\{-}\ze\s[$]',
\     'select': 'iM',
\   },
\  'list-item-a': {
\     '*pattern*': '^\(\s*\)\zs[-+]\(\s\+\)\(\_.\(\_^\n\)\=\(\_^\1\s\2\)\=\)\{-}\_^\s*\ze[\S\Z]\=',
\     'select': 'al',
\   },
\  'list-item-i': {
\     '*pattern*': '^\(\s*\)[-+]\(\s\+\)\zs\(\ze\_.\(\_^\n\)\=\(\_^\1\s\2\)\=\)\{-}\_^\s*[\S\Z]\=',
\     'select': 'il',
\   },
\  'bold-a': {
\     '*pattern*': '[*].\{-}[*]',
\     'select': 'a*',
\   },
\  'bold-i': {
\     '*pattern*': '[*][*]\|[*]\zs.\{-}\ze[*]',
\     'select': 'i*',
\   },
\  'emph-a': {
\     '*pattern*': '_.\{-}_',
\     'select': 'a_',
\   },
\  'emph-i': {
\     '*pattern*': '__\|_\zs.\{-}\ze_',
\     'select': 'i_',
\   },
\ })

let g:loaded_textobj_typst = 1
