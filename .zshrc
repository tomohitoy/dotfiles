export LANG="ja_JP.UTF-8"
export TERM=xterm-256color
export PATH=$HOME/.npm-global/bin:$PATH
# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' verbose true
autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000
setopt appendhistory extendedglob notify
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data
# history search Ctrl+s or Ctrl+S
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end 
# VCS
autoload -Uz vcs_info
#setopt prompt_subst
#zstyle ':vcs_info:*' formats '%F{white}@%f%F{cyan}%b%f'
#zstyle ':vcs_info:*' actionformats '%F{white}@%f%F{cyan}%b%f%F{white}-%f%F{cyan}%a%f'
zstyle ':vcs_info:*' formats '@%b'
zstyle ':vcs_info:*' actionformats '@%b(%a)'
precmd () {
	psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
# End of lines configured by zsh-newuser-install
autoload colors
colors

# Alias
alias ls='ls -G'
# PATH
PATH=/Users/yano/.pyenv/shims:$PATH:~/.bin
# no beep
setopt nolistbeep
# useful functions
setopt auto_cd
setopt auto_pushd
setopt correct
setopt list_packed
