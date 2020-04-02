nnoremap [denite]    <Nop>
nmap     ;u [denite]

" カレントディレクトリ以下
nnoremap <silent> [denite]a  :<C-u>Denite file/rec<CR>
" 最近開いたバッファー
" nnoremap <silent> [denite]r  :<C-u>Denite file_mru<CR>
" バッファー
nnoremap <silent> [denite]b  :<C-u>Denite buffer<CR>
" Yank したもの
" nnoremap <silent> [denite]y  :<C-u>Denite neoyank<CR>j
" 検索
nnoremap <silent> [denite]g  :<C-u>Denite grep<CR>
" カーソル下の単語から検索
nnoremap <silent> [denite]]  :<C-u>DeniteCursorWord grep<CR>

" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  imap <silent><buffer> <C-o> <Plug>(denite_filter_quit)
endfunction
