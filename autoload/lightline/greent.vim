" =============================================================================
" Filename: autoload/lightline/colorscheme/seoul256.vim
" Author: Aaron Moser
" License: MIT License
" Last Change: 21.09.2019
" =============================================================================
let s:base03  = [ '#d7ffd7', 194 ]
let s:base02  = [ '#d7ffd7', 194 ]
let s:base01  = [ '#afd787', 150 ]
let s:base00  = [ '#d7ffaf', 193 ]
let s:base0   = [ '#005f5f', 23  ]
let s:base1   = [ '#5faf5f', 71  ]
let s:base2   = [ '#5faf5f', 71  ]
let s:base3   = [ '#d7ffd7', 194 ]
let s:yellow  = [ '#d7af5f', 179 ]
let s:orange  = [ '#d75f5f', 168 ]
let s:red     = [ '#d7005f', 161 ]
let s:magenta = [ '#d7005f', 161 ]
let s:peach   = [ '#d75f5f', 168 ]
let s:blue    = [ '#5fafff', 75  ]
let s:cyan    = [ '#87d7d7', 23  ]
let s:green   = [ '#003333', 70  ]
let s:white   = [ '#d7ffd7', 194 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:base3, s:blue ], [ s:base3, s:base01 ] ]
let s:p.normal.right = [ [ s:base02, s:base1 ], [ s:base2, s:base01 ] ]
let s:p.inactive.right = [ [ s:base02, s:base00 ], [ s:base0, s:base02 ] ]
let s:p.inactive.left =  [ [ s:base0, s:base02 ], [ s:base00, s:base02 ] ]
let s:p.insert.left = [ [ s:base02, s:green ], [ s:base3, s:base01 ] ]
let s:p.replace.left = [ [ s:base02, s:magenta ], [ s:base3, s:base01 ] ]
let s:p.visual.left = [ [ s:base02, s:peach ], [ s:base3, s:base01 ] ]
let s:p.normal.middle = [ [ s:base0, s:base02 ] ]
let s:p.inactive.middle = [ [ s:base00, s:base02 ] ]
let s:p.tabline.left = [ [ s:base3, s:base00 ] ]
let s:p.tabline.tabsel = [ [ s:base3, s:base02 ] ]
let s:p.tabline.middle = [ [ s:base01, s:base1 ] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:red, s:base02 ] ]
let s:p.normal.warning = [ [ s:yellow, s:base01 ] ]

let g:lightline#colorscheme#greent#palette = lightline#colorscheme#flatten(s:p)
