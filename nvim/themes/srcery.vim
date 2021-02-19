" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi Normal ctermfg=15 ctermbg=0 guifg=#FCE8C3 guibg=#1C1B19
    hi LineNr ctermbg=NONE guibg=NONE
endif

hi Comment cterm=italic

let g:srcery_italic = 1
syntax on
colorscheme srcery
set t_Co=256
