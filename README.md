# xdg-config
My XDG_CONFIG_HOME directory

# Configurations
- Zsh
- NeoVim
- Tmux
- Brewfile(Homebrew)
- Gemfile(Ruby)
- packages.txt(pip)

# Installation

### requirements
- Environment variables
  - $XDG_CONFIG_HOME
  - $XDG_CACHE_HOME
  - $XDG_DATA_HOME

```zsh
$ git clone https://github.com/tomomura/xdg-config.git $HOME/.config

$ ln -sF $HOME/.config/zsh/zshenv $HOME/.zshenv

# source $HOME/.zshenv
```

## Brewfile
### requirements
- Homebrew

```zsh
$ brew bundle --file=$XDG_CONFIG_HOME/homebrew/Brewfile
```

## Gemfile

### requirements
- bundler

```zsh
$ bundle install --gemfile=$XDG_CONFIG_HOME/ruby/Gemfile
```

## packages.txt

### requirements
- pip

```zsh
$ pip install -r $XDG_CONFIG_HOME/python/pip/packages.txt
```

## Zsh, Tmux, NeoVim, Git

```zsh
$ $XDG_CONFIG_HOME/install.sh
```

# Uninstall

```zsh
$ $XDG_CONFIG_HOME/uninstall.sh
```
