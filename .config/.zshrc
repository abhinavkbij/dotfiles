# ~/.zshrc
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

eval "$(starship init zsh)"
export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"
# export PGHOST="/var/run/postgresql"

HISTFILE=~/.history
HISTSIZE=10000
SAVEHIST=50000

setopt inc_append_history

. "$HOME/.asdf/asdf.sh"

# append completions to fpath
 fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export PATH=${PATH}:/opt/homebrew/opt/mysql/bin/
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/postgresql@16/lib"
export CPPFLAGS="-I/opt/homebrew/opt/postgresql@16/include"
export PATH="/Users/abhinavkbij/.local/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/abhinavkbij/Downloads/google-cloud-sdk 2/path.zsh.inc' ]; then . '/Users/abhinavkbij/Downloads/google-cloud-sdk 2/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/abhinavkbij/Downloads/google-cloud-sdk 2/completion.zsh.inc' ]; then . '/Users/abhinavkbij/Downloads/google-cloud-sdk 2/completion.zsh.inc'; fi
export CLOUDSDK_PYTHON=/Users/abhinavkbij/.pyenv/versions/3.9.19/bin/python3

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

source <(fzf --zsh)

#export LDFLAGS="$LDFLAGS -L/opt/homebrew/opt/zlib/lib"
#export CPPFLAGS="$CPPFLAGS -I/opt/homebrew/opt/zlib/include"

alias pyngil="/Users/abhinavkbij/Documents/projects/c_cpp_projects/cp_ngil_3.13/python.exe"

export PATH=${PATH}:/opt/miniconda3/bin/
export JAVA_HOME=$(/usr/libexec/java_home -v 17)
export PATH=$JAVA_HOME/bin:$PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
#
# <<< conda initialize <<<
