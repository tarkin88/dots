nnoremap <M-f> :Rg<CR>
nnoremap <M-t> :Tags<CR>
nnoremap <M-c> :BCommits<CR>

nnoremap <silent> <expr> <Leader><Leader> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":FZF\<cr>"
nnoremap <silent> <C-p> :Files<CR>
" show buffers
nnoremap <silent> <C-b> :Buffers<CR>

" Open files in vertical horizontal split
nnoremap <silent><M-v> :call fzf#run({
\   'right': winwidth('.') / 2,
\   'sink':  'vertical botright split' })<CR>

nnoremap <silent><A-k> :Rg <C-R><C-W><space><CR>

let $FZF_DEFAULT_COMMAND="rg --line-number --no-heading --smart-case --files --hidden --glob '!.git/**' -g '!{node_modules,.git,autoload}'"

let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(blue)%C(bold)%cr"'
let g:fzf_tags_command = 'ctags -R'

command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

let g:fzf_preview_window = []

" " Automatically open FZF if no file is select
" autocmd VimEnter    * nested call s:on_vimenter()

" function! s:on_vimenter()
"   if !argc() && line2byte('$') == -1
"       :Files
"   endif
" endfunction

if has('nvim') && exists("*nvim_open_win")
    " fix hideous sign column
    let g:fzf_colors = {
      \ "fg+": ["fg", "CursorLine", "CursorColumn", "Normal"],
      \ "bg+": ["bg", "ColorColumn", "CursorLine", "CursorColumn", "Normal"]}

    let $FZF_DEFAULT_OPTS='--layout=reverse --margin=1,2'
    let g:fzf_layout = { 'window': 'call FloatingFZF()' }

    function! FloatingFZF()
        let buf = nvim_create_buf(v:false, v:true)
        call setbufvar(buf, '&signcolumn', 'no')

        let height = 10
        if &lines > 10
            let height = float2nr(&lines * 0.20) " 35%
        endif

        let width = 80
        if &columns > 110
            let width = float2nr(&columns * 0.25) " 0.80 80%
        endif

        let horizontal = float2nr((&columns - width) / 2)
        let vertical = 1

        let opts = {
            \ 'relative': 'editor',
            \ 'row': vertical,
            \ 'col': horizontal,
            \ 'width': width,
            \ 'height': height,
            \ 'anchor': 'NW',
            \ 'style': 'minimal'
            \ }

        call nvim_open_win(buf, v:true, opts)
    endfunction
endif
