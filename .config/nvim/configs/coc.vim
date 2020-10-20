set updatetime=300

let g:coc_global_extensions = [
    \ 'coc-actions',
    \ 'coc-bookmark',
    \ 'coc-css',
    \ 'coc-diagnostic',
    \ 'coc-docker',
    \ 'coc-emmet',
    \ 'coc-emoji',
    \ 'coc-eslint',
    \ 'coc-git',
    \ 'coc-highlight',
    \ 'coc-html',
    \ 'coc-jest',
    \ 'coc-json',
    \ 'coc-lists',
    \ 'coc-marketplace',
    \ 'coc-neosnippet',
    \ 'coc-pairs',
    \ 'coc-pyright',
    \ 'coc-python',
    \ 'coc-sh',
    \ 'coc-snippets',
    \ 'coc-tag',
    \ 'coc-utils',
    \ 'coc-vimlsp',
    \ 'coc-yaml',
    \ 'coc-yank',
    \ ]

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

let g:coc_snippet_next = '<C-R>'

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif


" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>



function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>ac  <Plug>(coc-codeaction)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end


" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer." Explorer
"let g:coc_explorer_global_presets = {
"\   'floating': {
"\      'position': 'floating',
"\   },
"\   'floatingLeftside': {
"\      'position': 'floating',
"\      'floating-position': 'left-center',
"\      'floating-width': 30,
"\   },
"\   'floatingRightside': {
"\      'position': 'floating',
"\      'floating-position': 'right-center',
"\      'floating-width': 30,
"\   },
"\   'simplify': {
"\     'file.child.template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
"\   }
"\ }
""nmap <silent> <space>e :CocCommand explorer<CR>
"" nnoremap <silent> <leader>e :CocCommand explorer<CR>
"" nmap <space>f :CocCommand explorer --preset floatingRightside<CR>
"autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
" command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')


"" Explorer
"let g:coc_explorer_global_presets = {
"\   'floating': {
"\      'position': 'floating',
"\   },
"\   'floatingLeftside': {
"\      'position': 'floating',
"\      'floating-position': 'left-center',
"\      'floating-width': 30,
"\   },
"\   'floatingRightside': {
"\      'position': 'floating',
"\      'floating-position': 'right-center',
"\      'floating-width': 30,
"\   },
"\   'simplify': {
"\     'file.child.template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
"\   }
"\ }
""nmap <silent> <space>e :CocCommand explorer<CR>
"" nnoremap <silent> <leader>e :CocCommand explorer<CR>
"" nmap <space>f :CocCommand explorer --preset floatingRightside<CR>
"autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

"nmap <silent><F2> :CocCommand explorer<CR>

" Example configuration
nmap <silent><F9> <Plug>(coc-bookmark-toggle)
nmap <silent><F10> <Plug>(coc-bookmark-annotate)
nmap <silent><F11> <Plug>(coc-bookmark-next)
nmap <silent><F12> :CocList bookmark <CR>

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Show all diagnostics.
nnoremap <silent><F8> :<C-u>CocList diagnostics<cr>
" Show commands.
nnoremap <silent><F7> :<C-u>CocList commands<cr>

nmap <silent> <C-k> <Plug>(coc-diagnostic-prev)
nmap <silent> <C-j> <Plug>(coc-diagnostic-next)

command! -nargs=0 Prettier :CocCommand prettier.formatFile
