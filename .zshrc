# I you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
#export PATH=/Applications/MIT:GNU\ Scheme\ 11.0.90.app/Contents/Resources/mit-scheme
export PATH=/opt/homebrew/bin:$PATH
# Android .cmdline-tools
export ANDROID_SDK_ROOT=/Users/dude/.cmdline-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/build-tools/30.0.2
# Path to your oh-my-zsh installation.
export ZSH="/Users/dude/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
ZSH_TMUX_AUTOSTART="true"
ZSH_TMUX_AUTOCONNECT="false"
ZSH_TMUX_AUTOQUIT="false"
#ZSH_TMUX_ITERM2="true"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

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
plugins=(
  git
  tmux
  vi-mode
  shellfirm # https://github.com/kaplanelad/shellfirm (Asks confirmation for risky commands)
)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

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

alias python3.8=/usr/bin/python3
alias scheme=/usr/local/lib/mit-scheme-x86-64/mit-scheme
alias code="/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron"
alias ghidra="/Users/dude/Applications/Ghidra/ghidraRun"
alias scheme=/Applications/MIT:GNU\ Scheme\ 11.0.90.app/Contents/Resources/mit-scheme
alias nvi=nvim
alias vi=nvim
if [[ $TMUX ]]; then
  alias clear='clear && tmux clear-history'
fi
# Cargo fix for rust
alias cargo="$HOME/.cargo/bin/cargo"


# Original tmux aliases https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/tmux
# Kill all but current session https://tmuxcheatsheet.com/?q=&hPP=100&idx=tmux_cheats
alias tc="tmux kill-session -a"
alias ta="tmux attach"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/dude/.miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/dude/.miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/dude/.miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/dude/.miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# not saving history and not sharing history
# setopt noincappendhistory
setopt nosharehistory


# openblas messes up pip compilation. passing it as environment variable
export OPENBLAS=$(/opt/homebrew/bin/brew --prefix openblas)
export CFLAGS="-falign-functions=8 ${CFLAGS}"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/opt/homebrew/opt/gnu-getopt/bin:$PATH"

# QT@5
export LDFLAGS="-L/opt/homebrew/opt/qt@5/lib"
export CPPFLAGS="-I/opt/homebrew/opt/qt@5/include"
export PATH="/opt/homebrew/opt/qt@5/bin:$PATH"

# Python 3.10
export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/python@3.10/lib"
export PKG_CONFIG_PATH="/opt/homebrew/opt/python@3.10/lib/pkgconfig"
# Uncommment cause zsh erros
#export PATH="/opt/homebrew/opt/python@3.10/Frameworks/Python.framework/Versions/3.10/bin"

#llvm ; BUT WHY?
export LDFLAGS="-L/opt/homebrew/opt/llvm@11/lib -Wl,-rpath,/opt/homebrew/opt/llvm/lib"
export LDFLAGS="-L/opt/homebrew/opt/llvm@11/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm@11/include"
export PATH="/opt/homebrew/opt/llvm@11/bin:$PATH"


#if [ "TMUX" = "" ]; then tmux; fi
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="$PATH:/Users/dude/.cargo/bin"
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export PATH="$PATH:/Users/dude/.cargo/bin"
export PATH="$PATH:/Users/dude/.cargo/bin"

# GOPATH
export GOPATH="$PATH:/Users/dude/.go"
export PATH="$PATH:/Users/dude/.go/bin"

export PATH="/opt/homebrew/opt/node@16/bin:$PATH"

# I am slow!!
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
