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
export CLAUDE_CODE_USE_BEDROCK=1
export AWS_PROFILE=aha_staging
export AWS_REGION=us-east-1
export ANTHROPIC_DEFAULT_OPUS_MODEL=us.anthropic.claude-opus-4-8
export ANTHROPIC_DEFAULT_SONNET_MODEL=us.anthropic.claude-sonnet-4-6
export ANTHROPIC_DEFAULT_HAIKU_MODEL=us.anthropic.claude-haiku-4-5-20251001-v1:0
