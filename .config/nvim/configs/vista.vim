let g:vista_default_executive = 'ctags'

let g:vista_fzf_preview = ['right:50%']


function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

" nnoremap <silent> <F5> :Vista finder ctags	<CR>
nnoremap <silent> <F6> :Vista!!	<CR>
