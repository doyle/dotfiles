export PS1='$ '
export EDITOR=vim
export GREP_OPTIONS='--color=auto' 
export GREP_COLOR='100;7'

alias ls='ls -G'

# git aliases
alias gitk='gitk 2>/dev/null'
alias gb='git branch'
alias gf='git fetch --all --prune'
alias gs='git status'
alias fixup='git commit -a --amend'
alias m='git checkout master'

source .livingsocial_profile

# rails aliases
alias sc='script/console'
alias rc='rails console'
alias bi='bundle install --local'
alias bo='EDITOR=mvim bundle open $@'

source /usr/local/etc/bash_completion.d/git-completion.bash

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

PATH=/usr/local/bin:/usr/local/sbin:$PATH:~/bin

# Ruby GC
export RUBY_HEAP_FREE_MIN=1024
export RUBY_HEAP_MIN_SLOTS=4000000
export RUBY_HEAP_SLOTS_INCREMENT=250000
export RUBY_GC_MALLOC_LIMIT=500000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1

_git_bd()
{
  _git_branch
}
