nnoremap [unite]    <Nop>
nmap     ;u [unite]

function! DispatchUniteFileRecAsyncOrGit()
  if filereadable(getcwd()."/.gitignore")
    Unite -no-split file_rec/git
  else
    Unite -no-split file_rec/async
  endif
endfunction

nnoremap <silent> [unite]a  :<C-u>call DispatchUniteFileRecAsyncOrGit()<CR>
nnoremap <silent> [unite]f  :<C-u>Unite -no-split file<CR>
nnoremap <silent> [unite]r  :<C-u>Unite -no-split file_mru<CR>
nnoremap <silent> [unite]b  :<C-u>Unite -no-split buffer<CR>
nnoremap <silent> [unite]y  :<C-u>Unite -no-split history/yank<CR>
nnoremap <silent> [unite]g  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>

nnoremap <silent> [unite]rm  :<C-u>Unite -no-split rails/model<CR>
nnoremap <silent> [unite]rc  :<C-u>Unite -no-split rails/controller<CR>
nnoremap <silent> [unite]rv  :<C-u>Unite -no-split rails/view<CR>
nnoremap <silent> [unite]rh  :<C-u>Unite -no-split rails/helper<CR>
nnoremap <silent> [unite]rd  :<C-u>Unite -no-split rails/db<CR>
nnoremap <silent> [unite]rj  :<C-u>Unite -no-split rails/javascript<CR>
nnoremap <silent> [unite]rs  :<C-u>Unite -no-split rails/stylesheet<CR>

if executable('hw')
  let g:unite_source_grep_command = 'hw'
  let g:unite_source_grep_default_opts = '--no-group --no-color'
  let g:unite_source_grep_recursive_opt = ''
endif
