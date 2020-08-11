let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'

" let g:ale_sign_warning = ''
" let g:ale_sign_error = ''
" let g:ale_sign_info = ''

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_info_str = 'I'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_lint_delay = 500
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave=1
let g:ale_lint_on_enter = 0

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

highlight ALEErrorSign guifg=Red
highlight ALEWarningSign guifg=Yellow

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}
