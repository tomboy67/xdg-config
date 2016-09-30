source ~/.config/nvim/rc/init.rc.vim
source ~/.config/nvim/rc/dein.rc.vim
source ~/.config/nvim/rc/base.rc.vim
source ~/.config/nvim/rc/color.rc.vim
source ~/.config/nvim/rc/editing.rc.vim
source ~/.config/nvim/rc/encoding.rc.vim
source ~/.config/nvim/rc/indent.rc.vim
source ~/.config/nvim/rc/search.rc.vim

for f in split(glob('~/.config/nvim/rc/plugins/*.vim'), '\n')
  exe 'source' f
endfor
