" textobj-typst - Text objects for Typst
" Author: Alberto Lazari <alberto.lazari@gmail.com

if exists('g:loaded_textobj_typst')
  finish
endif

call textobj#user#plugin('typst', {
\  'math-inline-equation-a': {
\     '*pattern*': '[$]\S[^$]*\S[$]',
\     'select': 'am',
\   },
\  'math-inline-equation-i': {
\     '*pattern*': '[$]\zs\S[^$]*\S\ze[$]',
\     'select': 'im',
\   },
\  'math-block-equation-a': {
\     '*pattern*': '[$]\s\+[^$]*\s\+[$]',
\     'select': 'aM',
\   },
\  'math-block-equation-i': {
\     '*pattern*': '[$]\s\+\zs[^$]*\ze\s\+[$]',
\     'select': 'iM',
\   },
\  'list-item-a': {
\     '*pattern*': '^\s*\zs[-+]\s\+.*',
\     'select': 'al',
\   },
\  'list-item-i': {
\     '*pattern*': '^\s*[-+]\s\+\zs.*',
\     'select': 'il',
\   },
\ })

let g:loaded_textobj_typst = 1
