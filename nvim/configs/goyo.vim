let g:goyo_width =140
let g:goyo_linenr=1

function! s:goyo_enter()
  set noshowmode
  set noshowcmd
  set scrolloff=999
endfunction

function! s:goyo_leave()
  set showmode
  set showcmd
  set scrolloff=5
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

autocmd BufRead *.py :Goyo


nnoremap <silent><F12> :Goyo <cr>
