export PS1='\[\033[0;32m\]$\[\033[0m\] '
export EDITOR=vim
export GREP_OPTIONS='--color=auto' 
export GREP_COLOR='100;7'

alias ls='ls -G'

# git aliases
alias gitk='gitk 2>/dev/null'
alias gb='git branch'
alias gbr='git branch -r'
alias gf='git fetch --all --prune'
alias gr='git rebase origin/master'
alias gs='git status'
alias fixup='git commit -a --amend'
alias m='git checkout master'
alias last='git checkout -'

# rails aliases
alias sc='script/console'
alias rc='rails console'
alias bi='bundle install --local'
alias bo='EDITOR=mvim bundle open $@'
alias rt='bundle exec ruby -Itest $@'

#path aliases
alias dev='cd /Users/doyle/Development'

source /usr/local/etc/bash_completion.d/git-completion.bash

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

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

export NVM_DIR=~/.nvm
  . $(brew --prefix nvm)/nvm.sh

# Kit Check specific settings
source ~/.kit_check_profile
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
