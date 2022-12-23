export PS1='\[\033[0;32m\]$\[\033[0m\] '
export EDITOR=vim
export GREP_OPTIONS='--color=auto' 
export GREP_COLOR='100;7'
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

alias ls='ls -G'

# git aliases
alias gitk='gitk 2>/dev/null'
alias gb='git branch'
alias gbr='git branch -r'
alias gf='git fetch --all --prune'
alias gr='git rebase origin/trunk'
alias ir='git rebase -i origin/trunk'
alias gs='git status'
alias fixup='git commit -a --amend'
alias m='git checkout master'
alias t='git checkout trunk'
alias last='git checkout -'

# rails aliases
alias sc='script/console'
alias rc='bundle exec rails console'
alias bi='bundle install --local'
alias bo='EDITOR=mvim bundle open $@'
alias rt='bundle exec ruby -Itest $@'
alias be='bundle exec $@'

#path aliases
alias dev='cd /Users/doyle/Development'

source /opt/homebrew/etc/bash_completion.d/git-completion.bash

PATH=/usr/local/bin:/usr/local/sbin:$PATH:~/bin

# Ruby GC
export RUBY_HEAP_FREE_MIN=1024
export RUBY_GC_HEAP_INIT_SLOTS=4000000
export RUBY_HEAP_SLOTS_INCREMENT=250000
export RUBY_GC_MALLOC_LIMIT=500000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1

_git_bd()
{
  _git_branch
}

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(rbenv init -)"
