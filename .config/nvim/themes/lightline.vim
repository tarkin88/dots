let g:lightline = {
      \ 'colorscheme': 'forest_night',
       \ 'mode_map': {
        \ 'n' : 'N',
        \ 'i' : 'I',
        \ 'R' : 'R',
        \ 'v' : 'V',
        \ 'V' : 'VL',
        \ "\<C-v>": 'VB',
        \ 'c' : 'C',
        \ 's' : 'S',
        \ 'S' : 'SL',
        \ "\<C-s>": 'SB',
        \ 't': 'T',
        \ },
        \ 'active': {
        \   'left': [['mode', 'paste'], ['filename', 'modified']],
        \   'right': [['lineinfo'], ['percent'], ['readonly', 'linter_warnings', 'linter_errors', 'linter_ok']]
        \ },
        \ 'component_expand': {
        \   'linter_warnings': 'LightlineLinterWarnings',
        \   'linter_errors': 'LightlineLinterErrors',
        \   'linter_ok': 'LightlineLinterOK'
        \ },
        \ 'component_type': {
        \   'readonly': 'error',
        \   'linter_warnings': 'warning',
        \   'linter_errors': 'error'
        \ }
      \ }
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

" Update and show lightline but only if it's visible (e.g., not in Goyo)
function! s:MaybeUpdateLightline()
  if exists('#lightline')
    call lightline#update()
  end
endfunction

" Update the lightline scheme from the colorscheme. Hopefully.
function! s:UpdateLightlineColorScheme()
  let g:lightline.colorscheme = 'forest_night'
  call lightline#init()
endfunction

augroup _lightline
  autocmd!
  autocmd User ALELint call s:MaybeUpdateLightline()
  autocmd ColorScheme * call s:UpdateLightlineColorScheme()
augroup END

