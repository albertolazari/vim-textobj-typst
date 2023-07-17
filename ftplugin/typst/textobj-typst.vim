" textobj-typst - Text objects for Typst
" Author: Alberto Lazari <alberto.lazari@gmail.com

if exists('g:loaded_textobj_typst')
  finish
endif

call textobj#user#plugin('typst', {
\  'math-inline-equation-a': {
\     '*pattern*': '[$].\=[$]\|[$]\S.\{-}\S[$]',
\     'select': 'am',
\   },
\  'math-inline-equation-i': {
\     '*pattern*': '[$][$]\|[$]\zs.\=\ze[$]\|[$]\zs\S.\{-}\S\ze[$]',
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
\     '*pattern*': '^\s*\zs[-+]\s\+\_.\{-}\_^\s*\ze[-+\n]',
\     'select': 'al',
\   },
\  'list-item-i': {
\     '*pattern*': '^\s*[-+]\s\+\zs\_.\{-}\ze\n\_^\s*[-+\n]',
\     'select': 'il',
\   },
\ })

let g:loaded_textobj_typst = 1
