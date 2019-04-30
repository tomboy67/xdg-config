export ZPLUG_CACHE_DIR=$HOME/.cache/zplug

source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-history-substring-search"

zplug "zsh-users/zsh-autosuggestions"

zplug "zsh-users/zsh-completions"

zplug "mollifier/anyframe"

zplug "sindresorhus/pure"

zplug "mafredri/zsh-async"

zplug "zsh-users/zsh-syntax-highlighting", defer:2

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose
