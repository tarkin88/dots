
" require ALE
function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? '' : printf(
    \   '%d   %d  ',
    \   all_non_errors,
    \   all_errors
    \)
endfunction


" ~~~~ Statusline configuration ~~~~
" ':help statusline' is not my friend!
function! RedrawModeColors(mode) " {{{
  " Normal mode
  if a:mode == 'n'
    hi StatusLineAccent guifg=#292b34 gui=none guibg=none
    hi StatusLineAccentBody guibg=none gui=none guifg=#7ed491
    hi StatusLineFilename guibg=none gui=none guifg=#7ed491
  " Insert mode
  elseif a:mode == 'i'
    hi StatusLineAccent guifg=#292b34 gui=none guibg=none
    hi StatusLineAccentBody guibg=none gui=none guifg=#f9929b
    hi StatusLineFilename guibg=none gui=none guifg=#f9929b
  " Replace mode
  elseif a:mode == 'R'
    hi StatusLineAccent guifg=#292b34 gui=none guibg=none
    hi StatusLineAccentBody guibg=#292b34 gui=none guifg=#fbdf90
    hi StatusLineFilename guibg=#292b34 gui=none guifg=#fbdf90
  " Visual mode
  elseif a:mode == 'v' || a:mode == 'V' || a:mode == '^V'
    hi StatusLineAccent guifg=#292b34 gui=none guibg=none
    hi StatusLineAccentBody guibg=#292b34 gui=none guifg=#a3b8ef
    hi StatusLineFilename guibg=#292b34 gui=none guifg=#a3b8ef
  endif
  " Return empty string so as not to display anything in the statusline
  return ''
endfunction
" }}}


" Statusbar items
" ====================================================================

" This will not be displayed, but the function RedrawModeColors will be
" called every time the mode changes, thus updating the colors used for the
" components.
set statusline=%{RedrawModeColors(mode())}
" Left side items
" =======================
set statusline+=%#StatusLineAccentBody#
set statusline+=\ 
" show modified
set statusline+=%m
set statusline+=\ 
" Filename
set statusline+=%#StatusLineFilename#\ %f
set statusline+=\ 
" Read Only Fl1ag
set statusline+=%#StatusLineRO#%r
set statusline+=\ 
" Right side items
" =======================
set statusline+=%=
" file type
" set statusline+=%#StatusLineLineColBody#%y
" set statusline+=\ 
" Line and Column
set statusline+=%#StatusLineLineColBody#\ %2l
set statusline+=\ 
set statusline+=\/%#StatusLineLineColBody#%2c
set statusline+=\ 

" Lintern
set statusline+=%#StatusLineAle#\ %{LinterStatus()}
set statusline+=\ 

" Setup the colors

hi StatusLineAle guibg=none gui=none guifg=#5ED0F1

hi StatusLineRO guibg=none gui=none guifg=#ff0066
hi StatusLine guibg=none gui=none guifg=NONE

