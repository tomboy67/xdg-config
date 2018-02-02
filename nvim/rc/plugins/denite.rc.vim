nnoremap [denite]    <Nop>
nmap     ;u [denite]

" カレントディレクトリ以下
nnoremap <silent> [denite]a  :<C-u>Denite file_rec<CR>
" 最近開いたバッファー
nnoremap <silent> [denite]r  :<C-u>Denite file_mru<CR>
" バッファー
nnoremap <silent> [denite]b  :<C-u>Denite buffer<CR>
" Yank したもの
nnoremap <silent> [denite]y  :<C-u>Denite neoyank<CR>j
" 検索
nnoremap <silent> [denite]g  :<C-u>Denite grep<CR>
" カーソル下の単語から検索
nnoremap <silent> [denite]]  :<C-u>DeniteCursorWord grep<CR>

" nnoremap <silent> [unite]rm  :<C-u>Unite -no-split rails/model<CR>
" nnoremap <silent> [unite]rc  :<C-u>Unite -no-split rails/controller<CR>
" nnoremap <silent> [unite]rv  :<C-u>Unite -no-split rails/view<CR>
" nnoremap <silent> [unite]rh  :<C-u>Unite -no-split rails/helper<CR>
" nnoremap <silent> [unite]rd  :<C-u>Unite -no-split rails/db<CR>
" nnoremap <silent> [unite]rj  :<C-u>Unite -no-split rails/javascript<CR>
" nnoremap <silent> [unite]rs  :<C-u>Unite -no-split rails/stylesheet<CR>
