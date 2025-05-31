#---------#
# Startup #
#---------#
colorscript -e 30

#------------#
# Oh My Posh #
#------------#

if ! which oh-my-posh >/dev/null 2>&1; then
  curl -s https://ohmyposh.dev/install.sh | bash -s
fi

#-------#
# Zinit #
#-------#
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME )"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

zinit snippet OMZP::git
zinit snippet OMZP::sudo

autoload -Uz compinit && compinit

zinit cdreplay -q

#-----------#
# Functions #
#-----------#
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	trash -- "$tmp"
}

#--------------------------Aliases--------------------------#

#-----#
# Eza #
#-----#
alias lal='eza -lh  --icons=auto --sort=name --group-directories-first' # long list
alias ls='eza -1   --icons=auto --sort=name --group-directories-first' # short list
alias tree='eza --icons=auto --sort=name --tree' # list folder as tree

#---------#
# Removed #
#---------#
alias rm='echo "\033[34mUse \033[32mts\033[34m for file removal instead.\nIf you want to use \033[32mrm\033[34m type \033[32m\\\rm\033[34m to use it.\033[0m"; false'
alias wget='echo "\033[34mUse \033[32mxh\033[34m instead.\nIf you want to use \033[32mwget\033[34m type \033[32m\\wget\033[34m to use it.\033[0m"; false'

#-------#
# Trash #
#-------#
alias ts="trash" # Safer version of rm. Places deleted file in ~/.local/share/Trash/
alias tsrm="trash-rm" # Remove one item from ~/.local/share/Trash/
alias tsls="trash-list" # List items in ~/.local/share/Trash/
alias empty="trash-empty" # Empty the contents of ~/.local/share/Trash/
alias restore="trash-restore" # Restore one item from ~/.local/share/Trash/

#----------------#
# Quick Commands #
#----------------#
alias p="mocp"
alias bonsai="cbonsai"
alias g="lazygit"
alias present="presenterm"
alias df="duf"
alias mkdir='mkdir -p'
# alias z='cd'
alias v='nvim'
alias c='clear'
alias reload='source ~/.zshrc'
alias rice="xh -b -F GET git.io/rice"
alias matrix="neo-matrix -D -c purple"

#------------#
# Navigation #
#------------#
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

#----------#
# Modified #
#----------#
alias clock="tty-clock -cD -C 4"
alias icat='c; kitten icat'
alias bash="c; bash"
alias zigup="zigup --path-link $HOME/.local/bin/zig"
alias parui="parui -p=yay"
alias speedtest="speedtest --simple --secure"

#----------#
# Keybinds #
#----------#
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward


#-----------------------------------------------------------#

#---------#
# History #
#---------#
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

#-----------#
# Variables #
#-----------#
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:#45475a \
--multi"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"
export BAT_THEME="Catppuccin Mocha"
export TERMINAL="/usr/bin/kitty"
export EDITOR="nvim"
export PATH="$HOME/Desktop/.Scripts/:$HOME/.local/bin/:$PATH"
export KB_VENDOR="tpacpi"
export GRIM_DEFAULT_DIR="$HOME/Pictures/Screenshots/"

#---------#
# Styling #
#---------#
zstyle ':fzf-tab:*' use-fzf-default-opts yes
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

#--------------#
# Utility Init #
#--------------#
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(oh-my-posh init zsh --config ~/.config/omp/config.toml)"
