# ~/.bashrc ts
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# 1. ALIASES
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# 2. COLORS
# Bash requires \[ \] around non-printing sequences
BLUE='\[\e[34m\]' # Blue
RESET='\[\e[0m\]' # Reset color

# 3. MINIMAL GIT BRANCH
git_prompt() {
  git rev-parse --is-inside-work-tree &>/dev/null || return
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  printf " (%s)" "$branch"
}

# 4. PROMPT (PS1)
#    rodrig: nvim (main)$

PS1="\u: ${BLUE}\W${RESET}\$(git_prompt)\$ "

# 5. COMPLETION FEATURES
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# 6. PATH
export PATH=\"$PATH:/usr/local/MATLAB/R2025b/bin\"
