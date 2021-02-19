set termguicolors

" if (has("autocmd"))
"   augroup colorextend
"     autocmd!
"     autocmd ColorScheme * call onedark#extend_highlight("Function", { "gui": "bold" })
"     autocmd ColorScheme * call onedark#extend_highlight("Statement", { "fg": { "cterm": 128 } })
"     autocmd ColorScheme * call onedark#extend_highlight("Identifier", { "bg": { "gui": "#333333" } })
"   augroup END
" endif

let g:onedark_terminal_italics=1

colorscheme onedark
