set expandtab

set list
set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%

" インサートモードでもhjklで移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

"ビジュアルモード時vで行末まで選択
vnoremap v $h

" CTRL-hjklでウィンドウ移動
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

inoremap jj <Esc>

nmap <Space><Space> :bnext<CR>
nmap <BS><BS> :bprevious<CR>
nnoremap <silent>bd :bdelete<CR>
