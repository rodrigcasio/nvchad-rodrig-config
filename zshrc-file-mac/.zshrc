# ~/.zshrc

# ------------------------------
# 1. ENVIRONMENT VARIABLES (PATH & LOCALE)
# ------------------------------
# Homebrew path (put this first so Homebrew tools take priority)
export PATH="/opt/homebrew/bin:$PATH"

# Added your MATLAB path from the Arch config
export PATH="$PATH:/usr/local/MATLAB/R2025b/bin"

# Language support
export LC_ALL=en_US.UTF-8

# ------------------------------
# 2. ALIASES
# ------------------------------
# macOS 'ls' uses -G for color. Grep uses --color.
alias ls='ls -G'
alias grep='grep --color=auto'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias g++17='g++ -std=c++17'

# ------------------------------
# 3. PROMPT CONFIGURATION (Blue Style)
# ------------------------------
# %n=user, %m=host, %1~=current folder, %#=prompt symbol
PROMPT='%F{blue}%n%f@%m [%F{blue}%1~%f]%# '

# ------------------------------
# 4. COMPLETION & PLUGINS
# ------------------------------
# Native Zsh autocompletion
# This replaces the bash_completion logic from your Arch file

# Load NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Make GNU commands the default (ls, find, sed, grep, etc.)
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/findutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"

# Now you can use the Arch-style ls alias again!
alias ls='ls --color=auto'

