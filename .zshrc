export TERM="xterm-256color"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/d070259/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="half-life"
#ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
plugins=(fzf git zsh-autosuggestions kubectl history-substring-search)
# Fix special chars in zsh prompt https://stackoverflow.com/questions/42271657/oh-my-zsh-showing-weird-character-on-terminal

source $ZSH/oh-my-zsh.sh
source <(kubectl completion zsh)
source <(stern --completion=zsh)
# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

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
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#
# Custom scripts
#source /Users/d070259/work/code/utils_scripts/wsk_logins.sh
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias lsof='sudo lsof -PiTCP -sTCP:LISTEN'
#alias k='/usr/local/bin/kubectl'
alias kapply='cat << EOF | k apply -f -'
alias kw='kubectl logs -w'
alias lscurr="ls -R ./ | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"

export KUBECONFIG=/Users/d070259/.kube/config
export GOROOT=/usr/local/Cellar/go/1.16.3/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
alias add_tunnels='. ~/addTunnels.sh'
alias add_keys='. ~/addKeys.sh'
export KO_DOCKER_REPO=shazra/ko
alias kconfig='kubectl config view --minify'
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
export KO_DOCKER_REPO=docker.io/shazra

### Adding kubebuilder to PATH
export PATH=$PATH:/usr/local/kubebuilder/bin

#export LSCOLORS="egfxcxdxbxegedabagacad"
#source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Bind ^[[A/^[[B manually so up/down works both before and after zle-line-init
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Bind up and down keys
zmodload -F zsh/terminfo +p:terminfo
if [[ -n ${terminfo[kcuu1]} && -n ${terminfo[kcud1]} ]]; then
  bindkey ${terminfo[kcuu1]} history-substring-search-up
  bindkey ${terminfo[kcud1]} history-substring-search-down
fi

#bindkey '^P' history-substring-search-up
#bindkey '^N' history-substring-search-down
#bindkey -M vicmd 'k' history-substring-search-up
#bindkey -M vicmd 'j' history-substring-search-down

#bindkey -v

#bindkey '^P' up-history
#bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^d' kill-word
#bindkey '^r' history-incremental-search-backward

bindkey -s '^l' 'clear && tmux clear-history\n'

export KEYTIMEOUT=1
export EDITOR='vim'
export PATH="/usr/local/opt/python3/bin/:$PATH"
source /usr/local/etc/bash_completion.d/az
export PATH="/usr/local/Cellar/go/1.15.3/bin/:$PATH"
export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"

echo 'source <(kubectl completion zsh)'
echo 'complete -F __start_kubectl k'

export PATH="/usr/local/opt/krb5/bin:$PATH"
export PATH="/usr/local/opt/krb5/sbin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"

export CLOUDSDK_PYTHON=python2
clear
emojify "Terminal is ready :rocket: :muscle:"

source ~/.tunas/sourceme.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

SPACESHIP_KUBECONTEXT_COLOR_GROUPS=(
  # red if namespace is "kube-system"
  red    '\(kube-system)$'
  # else, green if "dev-01" is anywhere in the context or namespace
  green  dev-01
  # else, red if context name ends with ".k8s.local" _and_ namespace is "system"
  red    '\.k8s\.local \(system)$'
  # else, yellow if the entire content is "test-" followed by digits, and no namespace is displayed
  yellow '^test-[0-9]+$'
)



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/d070259/Downloads/google-cloud-sdk 2/path.zsh.inc' ]; then . '/Users/d070259/Downloads/google-cloud-sdk 2/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/d070259/Downloads/google-cloud-sdk 2/completion.zsh.inc' ]; then . '/Users/d070259/Downloads/google-cloud-sdk 2/completion.zsh.inc'; fi
