# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
# plugins=(git)
plugins=(git brew history extract z sudo zsh-autosuggestions zsh-syntax-highlighting)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

# Customized by wisicn START
export PATH=/usr/local/bin:/usr/local/sbin:~/bin:~/ws/scripts:/usr/libexec:$PATH
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export HOMEBREW_GITHUB_API_TOKEN=yourstoken

#ZSH_THEME="zhxue_robbyrussell"
ZSH_THEME="agnoster"

alias md5sum='openssl md5'
alias sha1sum='openssl sha1'
alias sha256sum='openssl dgst -sha256'
alias docker='podman'
alias gitpushall='git push origin master:master;git push gitlab master:master'

# Not finished, some important things to do:
#
# 1. Remember to Change the ZSH environment variable in the beginging of this file to your absoluate path, not the $HOME
# 2. Remember to change the plugins in the above. This is my value
# plugins=(git brew history docker extract z sudo)
# 3. Change the default Theme
# if you would like to use the zhxue_robbyrussell theme, follow this 
# copy the ./custom/* to $ZSH_CUSTOM. the default $ZSH_CUSTOM is $ZSH/custom
# cp -r ./custom/* $ZSH_CUSTOM/
# 
# if you would like to use the agnoster theme, follow this
# download the font in this URL https://github.com/abertsch/Menlo-for-Powerline
# get the zip or clone the git repositry, then install each of the four TTFs: simply double-click and let Font Book install them for you.
# Open iTerm2 Terminal, then navigate to Terminal Preferences > Profiles > Font and click the Change button.
# select Menlo-for-Powerline, 14 size
# And also the best Colors Presets of the default profile should be "SolarizedDark - Patched", you can get it via https://iterm2colorschemes.com/
# Or you can use the color preset Dracula from https://draculatheme.com/iterm/
#
# 4. change your HOMEBREW_GITHUB_API_TOKEN
# Customized by wisicn END

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
