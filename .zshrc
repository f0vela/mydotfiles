# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
zsh-autosuggestions
zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# cd navigation
alias ..="cd .."
alias ...="cd ../.."
alias 3.="cd ../../.."
alias cdev="cd $HOME/Developer"
alias cdimg="cd $HOME/Pictures"
alias cdocs="cd $HOME/Documents"
alias cdesk="cd $HOME/Desktop"
alias cdapps="cd $HOME/Applications"
alias cdown="cd $HOME/Downloads"

alias cls="clear"

# ls to exa
alias ls="eza --group-directories-first --icons --color=always"
alias la="eza --group-directories-first --icons --color=always -a"
alias ll="eza --group-directories-first --icons --color=always -l"
alias lla="eza --group-directories-first --icons --color=always -la"
alias lt="eza --group-directories-first --icons --color=always -at -snew"

# Move files to the trash can instead of just deleting them
alias rm="trash"

# cat to bat
alias cat="bat --theme Dracula"

# get my weather with curl
alias wtr="curl wttr.in"

alias 7zb="7z_bulk"
# git
alias ginit="git init"
alias gstatus="git status"
alias gaddup="git add -u"
alias gaddall="git add ."
alias gcommit="git commit -m"
alias gpush="git push -u"

# brew
alias brewl="brew list"
alias brewu="brew upgrade"
alias brewo="brew outdated"
alias brews="brew search"
alias brewi="brew install"
alias brewr="brew remove"
alias brewbk="brew bundle dump"
alias brewar="brew autoremove"
alias brewrs="brew services restart"

# miller csv to json: input.csv > output.json
alias c2j="mlr --c2j --jlistwrap cat"

# reactnative
alias rn-android="npx react-native run-android"
alias rn-ios="npx react-native run-ios"
alias rn-r-android="cd android && ./gradlew assembleRelease"

# bulk 7zip files by extension on it's own named files
function 7z_bulk {
    for i in *.$1; 
        do 7z a "$i.7z" "$i";
    done
}


#wezterm content folder
export PATH="$PATH:/Applications/WezTerm.app/Contents/MacOS"

#Android and rbenv paths
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

#export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
#export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
#export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#Node version manager FNM
eval "$(fnm env --use-on-cd)"

#homebrew Paths
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
  
export PATH="/opt/homebrew/opt/php@7.4/bin:$PATH"
export PATH="/opt/homebrew/opt/php@7.4/sbin:$PATH"
export PATH="/opt/homebrew/bin/:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/php@7.4/lib"
export CPPFLAGS="-I/opt/homebrew/opt/php@7.4/include"

#Local bin path
export PATH="$HOME/.local/bin:$PATH"

# Get system info with ascii art
# fm6000 -g 20 -m 10 -l 25 -r -rd $HOME/.config/asciiart/ -c "random"
# alias composer="php $HOME/composer.phar"
# Load pfetch
pfetch

#Load starshio prompt
eval "$(starship init zsh)"

eval "$(zoxide init --cmd cd zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH=$PATH:/Users/fvelasquez/.spicetify
