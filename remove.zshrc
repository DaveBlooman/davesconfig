# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh


ZSH_THEME="davey"
DEFAULT_USER="Dave"

# My aliases
alias zshconfig="sublime ~/.zshrc"
alias gsass="grunt sass:service:news"
alias rsss="rake sandbox:restart_services"
alias publish="rake sandbox:publish"
alias vsus="vagrant suspend"
alias vrus="vagrant resume"
alias rake='noglob rake'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby vagrant)
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
chruby ruby-1.9
export PATH=${PATH}:/Users/Dave/Downloads/android-sdk-macosx/platform-tools

export PATH=${PATH}:/usr/local/bin
export PATH=${PATH}:/usr/local/sbin
export PATH="$PATH":/Users/Dave/depot_tools
export PATH=${PATH}:/usr/local/opt/ruby/bin

# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

autoload -U promptinit
promptinit

alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
