" textobj-typst - Text objects for Typst
" Author: Alberto Lazari <alberto.lazari@gmail.com

if exists('g:loaded_textobj_typst')
  finish
endif

call textobj#user#plugin('typst', {
\  'math-inline-equation-a': {
\     '*pattern*': '[$][^$]*[$]',
\     'select': 'am',
\   },
\  'math-inline-equation-i': {
\     '*pattern*': '[$]\zs[^$]*\ze[$]',
\     'select': 'im',
\   },
\ })

let g:loaded_textobj_typst = 1
