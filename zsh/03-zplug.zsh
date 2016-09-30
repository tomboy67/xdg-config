export ZPLUG_CACHE_FILE=$HOME/.cache/zplug/cache

source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-history-substring-search"

zplug "zsh-users/zsh-autosuggestions"

zplug "zsh-users/zsh-completions"

zplug "mollifier/anyframe"

zplug "sindresorhus/pure"

zplug "mafredri/zsh-async"

zplug "zsh-users/zsh-syntax-highlighting", nice:10

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose
