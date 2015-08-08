# Path to your oh-my-zsh installation.
export ZSH=/home/shazra/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="flazz"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/home/shazra/bin:/usr/local/bin:/home/shazra/.rbenv/bin:/home/shazra/.rbenv/bin:/home/shazra/bin:/usr/local/bin:/home/shazra/bin:/usr/local/bin:/home/shazra/bin:/usr/local/bin:/home/shazra/.rbenv/bin:/home/shazra/.rbenv/bin:/home/shazra/.rbenv/bin:/home/shazra/.rbenv/bin:/home/shazra/.rbenv/bin:/home/shazra/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias code='cd /media/shazra/shome2/code'
alias software='cd /media/shazra/shome2/softwares'
alias devsetup='cd /media/shazra/shome2/code/dev-setup'
alias vssh='bundle exec vagrant ssh'
alias vup='bundle exec vagrant up'
alias vhalt='bundle exec vagrant halt'
alias vdestroy='bundle exec vagrant destroy'
alias apps='cd /media/shazra/shome2/code/dev-setup/apps'
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
rbenv global 2.1.6
rbenv rehash
reset
alias sublime='/media/shazra/shome2/Sublime\ Text\ 2/sublime_text &'
alias rubymine='/media/shazra/shome2/RubyMine-7.1.2/bin/rubymine.sh &'
alias tomcat7='cd /media/shazra/shome2/tomcat7'
alias shutdown='sudo shutdown now'
alias vi='vim'
