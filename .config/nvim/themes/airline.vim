let g:airline_extensions = ['branch', 'hunks', 'coc']

let g:airline#extensions#coc#enabled = 1

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'z', 'warning', 'error']]
" let g:airline_skip_empty_sections = 1

let g:airline_section_c = airline#section#create([''])
let g:airline_section_z = airline#section#create(['linenr'])

" Switch to your current theme
let g:airline_theme = 'sonokai'
" Always show tabs
 set showtabline=2
" We don't need to see things like -- INSERT -- anymore
set noshowmode
" Sections
" let g:airline_section_c = ''
" let g:airline_section_a = ""
let g:airline_section_y = ''
let g:webdevicons_enable_airline_tabline = 1

let g:airline_section_a = ""
" let g:airline_section_a = ""
" let g:airline_section_y = ''
"

