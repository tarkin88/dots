let g:startify_lists = [
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ ]

let g:startify_files_number = 10
let g:startify_session_autoload = 1
let g:startify_session_sort = 1
 let g:startify_custom_header = startify#fortune#boxed()


