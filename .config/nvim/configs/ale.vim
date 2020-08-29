let g:ale_disable_lsp = 1
" let g:ale_sign_column_always = 1
" let g:ale_sign_warning = '▲'
" let g:ale_sign_error = '✗'
" let g:ale_sign_info = ''

" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_info_str = 'I'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" let g:ale_lint_delay = 500
" let g:ale_lint_on_text_changed = 'never'

" let g:ale_fix_on_save = 1
" let g:ale_lint_on_insert_leave= 1
" let g:ale_lint_on_enter = 1
" let g:ale_lint_on_save = 1


" let g:ale_fixers = {
"  \ '*': ['remove_trailing_lines', 'trim_whitespace'],
"  \}

" nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)

" highlight link ALEWarningSign String
" highlight link ALEErrorSign Title
" " highlight ALEErrorSign guifg=Red
" " highlight ALEWarningSign guifg=Yellow

" function! LightlineLinterWarnings() abort
"   let l:counts = ale#statusline#Count(bufnr(''))
"   let l:all_errors = l:counts.error + l:counts.style_error
"   let l:all_non_errors = l:counts.total - l:all_errors
"   return l:counts.total == 0 ? '' : printf('%d ◆', all_non_errors)
" endfunction

" function! LightlineLinterErrors() abort
"   let l:counts = ale#statusline#Count(bufnr(''))
"   let l:all_errors = l:counts.error + l:counts.style_error
"   let l:all_non_errors = l:counts.total - l:all_errors
"   return l:counts.total == 0 ? '' : printf('%d ✗', all_errors)
" endfunction

" function! LightlineLinterOK() abort
"   let l:counts = ale#statusline#Count(bufnr(''))
"   let l:all_errors = l:counts.error + l:counts.style_error
"   let l:all_non_errors = l:counts.total - l:all_errors
"   return l:counts.total == 0 ? '✓ ' : ''
" endfunction
