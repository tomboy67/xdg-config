" dein configurations.

let g:dein#install_progress_type = 'title'
let g:dein#install_message_type = 'none'
let g:dein#enable_notification = 1

let s:path = expand('$CACHE/dein')
if !dein#load_state(s:path)
  finish
endif

let s:toml_path = '~/.config/nvim/dein.toml'
let s:toml_lazy_path = '~/.config/nvim/deinlazy.toml'
let s:toml_neovim_path = '~/.config/nvim/deineo.toml'

call dein#begin(s:path, [expand('<sfile>'),
      \ s:toml_path, s:toml_lazy_path, s:toml_neovim_path])

call dein#load_toml(s:toml_path, {'lazy': 0})
call dein#load_toml(s:toml_lazy_path, {'lazy' : 1})
if has('nvim')
  call dein#load_toml(s:toml_neovim_path, {})
endif

call dein#end()
call dein#save_state()

if dein#check_install()
  "" Installation check.
  call dein#install()
endif
