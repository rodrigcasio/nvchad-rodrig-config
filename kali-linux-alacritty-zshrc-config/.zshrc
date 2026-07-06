# BASIC SHELL OPTIONS
setopt autocd
setopt interactivecomments
setopt magicequalsubst
setopt nonomatch
setopt notify
setopt numericglobsort
setopt promptsubst

WORDCHARS='_-'
PROMPT_EOL_MARK=""

# KEYBINDINGS (EMACS STYLE)
bindkey -e

# Navigation
bindkey "^[f" forward-word
bindkey "^[b" backward-word
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

# Editing
bindkey "^U" backward-kill-line
bindkey "^K" kill-line
bindkey "^W" backward-kill-word
bindkey "^D" delete-char
bindkey "^L" clear-screen

# History search
bindkey "^R" history-incremental-search-backward

# HISTORY CONFIGURATION
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000

setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify

alias history="history 0"

# COMPLETION SYSTEM
autoload -Uz compinit
compinit -d ~/.cache/zcompdump

zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# GIT BRANCH FUNCTION
git_prompt_info() {
  local branch
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  [[ -n "$branch" ]] && echo "%F{magenta}($branch)%f"
}

# PROMPT
# %n = username (kali)
# %m = hostname (kali)
# %1~ = only current directory
PROMPT='%F{cyan}%n%f@%F{cyan}%m%f:%F{yellow}%1~%f %F{magenta}$(git_prompt_info)%f$ '

# TERMINAL TITLE
case "$TERM" in
xterm*|rxvt*|alacritty|gnome*)
    TERM_TITLE=$'\e]0;%n@%m: %~\a'
    ;;
esac

precmd() {
    print -Pnr -- "$TERM_TITLE"
}

# COLORS AND ALIASES
if command -v dircolors >/dev/null; then
    eval "$(dircolors -b)"

    alias ls='ls --color=auto'
    alias ll='ls -l'
    alias la='ls -A'
    alias l='ls -CF'

    alias grep='grep --color=auto'
    alias diff='diff --color=auto'
fi

# AUTOSUGGESTIONS
if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=244'
fi

# SYNTAX HIGHLIGHTING
if [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# COMMAND NOT FOUND
if [ -f /etc/zsh_command_not_found ]; then
    source /etc/zsh_command_not_found
fi
