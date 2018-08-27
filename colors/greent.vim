" -------------------------------------
" Name: greent.vim
" Description: A colorscheme for vim
" Author: Aaron Moser
" -------------------------------------

" Clear highlights
highlight clear

" Clear old syntax definitions
if exists('syntax_on')
    syntax reset
endif

" Set theme name
let g:colors_name = 'greent'

function! s:set() abort
    let turqoise4 = {'gui': '#008787', 'cterm': '30'}
    let darkseagreen3 = {'gui': '#87d7af', 'cterm': '115'}
    let palegreen1 = {'gui': '#afff87', 'cterm': '156'}
    let lightcyan = {'gui': '#d7ffff', 'cterm': '195'}
    let indianred = {'gui': '#d75f5f', 'cterm': '167'}
    let palegreen3 = {'gui': '#5fd75f', 'cterm': '77'}
    let deepskyblue4 = {'gui': '#005f5f', 'cterm': '23'}
    let seagreen3 = {'gui': '#5fd787', 'cterm': '78'}
    let seagreen1 = {'gui': '#5fffaf', 'cterm': '85'}
    let aquamarine3 = {'gui': '#5fd7af', 'cterm': '79'}
    let chartreuse3 = {'gui': '#5fd700', 'cterm': '76'}
    let mediumspringgreen = {'gui': '#00ffaf', 'cterm': '49'}
    let lightgreen = {'gui': '#87ff87' , 'cterm': '120'}
    let darkseagreen2 = {'gui': '#afffaf', 'cterm': '157'}
    let honeydew2 = {'gui': '#d7ffd7', 'cterm': '194'}
    let lightseagreen = {'gui': '#00afaf', 'cterm': '37'}
    let hotpink3 = {'gui': '#d75f5f', 'cterm': '168'}
    let darkseagreen1 = {'gui': '#d7ffaf', 'cterm': '193'}
    let darkolivegreen3 = {'gui': '#87d787', 'cterm': '113'}
    let deeppink3 = {'gui': '#d7005f', 'cterm': '161'}
    let lightsalmon1 = {'gui': '#ffaf87', 'cterm': '216'}
    let rosybrown = {'gui': '#af8787', 'cterm': '138'}
    let lightskyblue3 = {'gui': '#87afd7', 'cterm': '110'}
    let magenta1 = {'gui': '#ff00ff', 'cterm': '201'}
    let lightcoral = {'gui': '#ff8787', 'cterm': '210'}
    let magenta3 = {'gui': '#af00af', 'cterm': '127'}

    let none           = {'gui': 'NONE',      'cterm': 'NONE'}
    let bold           = {'gui': 'bold',      'cterm': 'bold'}
    let italic         = {'gui': 'italic',    'cterm': 'italic'}
    let underline      = {'gui': 'underline', 'cterm': 'underline'}
    let undercurl      = {'gui': 'undercurl', 'cterm': 'underline'}
    let boldcurl       = {'gui': 'bold,undercurl', 'cterm': 'bold,underline'}
    let boldunderline  = {'gui': 'bold,underline', 'cterm': 'bold,underline'}
    let bolditalic = {'gui': 'bold,italic', 'cterm':'bold,italic'}

    let highlight_group = {}

    let highlight_group.Normal = [deepskyblue4, darkseagreen2, none, none]
    let highlight_group.Visual = [none, palegreen3, none, none]
    " Cursor
    let highlight_group.Cursor = [deepskyblue4, aquamarine3, none, none]
    let highlight_group.CursorLine = [none, lightgreen, none, none]

    " Sidebar
    let highlight_group.LineNr = [lightcyan, turqoise4, bold, none]
    let highlight_group.CursorLineNr = [deepskyblue4, none, bolditalic, none]

    " Syntax groups
    let highlight_group.Comment = [lightseagreen, none, italic, none]
    let highlight_group.Identifier = [hotpink3, none, none, none]
    let highlight_group.Statement = [rosybrown, none, bold, none]
    let highlight_group.Function = [lightcoral, none, bold, none]
    let highlight_group.Constant = [magenta3, none, italic, none]

    if get(g:, 'colorscheme_no_background', 0)
        let highlight_group.Normal[1]      = bg_none
        let highlight_group.TabLineFill[1] = bg_none
        let highlight_group.VertSplit[1]   = bg_none
        let highlight_group.SignColumn[1]  = bg_none
    endif

    for [group, colors] in items(highlight_group)
        execute printf('highlight %s guifg=%s guibg=%s gui=%s, guisp=%s ctermfg=%s ctermbg=%s cterm=%s',
                        \ group,
                        \ colors[0]['gui'],
                        \ colors[1]['gui'],
                        \ colors[2]['gui'],
                        \ colors[3]['gui'],
                        \ colors[0]['cterm'],
                        \ colors[1]['cterm'],
                        \ colors[2]['cterm']
                        \ )
    endfor
endfunction
call s:set()
