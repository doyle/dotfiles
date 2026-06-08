autoload -Uz compinit && compinit

export PROMPT='%F{green}$ %F{white}'

alias ls='ls -G'
alias cop='git diff --name-only --diff-filter=d | xargs bin/rubocop -A'

# git aliases
alias gb='git branch'
alias gbg="git branch -vv | grep ': gone]'"
alias gf='git fetch --all --prune'
alias gs='git status'
alias fixup='git commit -a --amend'
alias m='git checkout master'

# docker aliases
alias dc='docker compose $@'

#path aliases
alias dev='cd /Users/doyle/AhaDevelopment'

alias claude-cost='pnpm dlx ccusage monthly --compact'

source ~/.aha_profile

export BUNDLER_PARALLELISM=10
eval "$(/opt/homebrew/bin/brew shellenv)"
source /opt/homebrew/opt/asdf/libexec/asdf.sh

eval "$(/Users/doyle/.local/bin/mise activate zsh)" # added by https://mise.run/zsh
eval "$(mise activate zsh)"

if command -v wt >/dev/null 2>&1; then eval "$(command wt config shell init zsh)"; fi
