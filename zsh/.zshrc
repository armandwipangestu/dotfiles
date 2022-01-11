export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
export ZSH=$HOME/.oh-my-zsh
#ZSH_THEME="osx"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(zsh-syntax-highlighting zsh-autosuggestions bgnotify)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

export TERM=xterm-256color 

PATH="$HOME/bin:$HOME/src:$HOME/.local/bin:$PATH"
export PATH

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
LS_COLORS='rs=0:di=01;38;5;12:ln=01;38;5;14:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=38;5;12;42:st=37;44:ex=01;38;5;10:'
export LS_COLORS

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases
source ~/.lfvar
source ~/.var
source ~/.scripts/library/colors.sh
source $HOME/.start
source /usr/share/doc/pkgfile/command-not-found.zsh
#source ~/.command_not_found_handler_pacman_native

PRIV="sudo"

setopt INC_APPEND_HISTORY

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
