# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

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
COMPLETION_WAITING_DOTS="true"

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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH=$PATH:/usr/local/bin:/usr/bin:$HOME/nvim-linux64/bin:$HOME/.local/bin:$HOME/.local/go/bin:$HOME/go/bin

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
# ALIASES
# file listings
alias l='ls -lhF'
alias ll='ls -lhaF'

# lighthouse
alias run-lighthouse="source $HOME/lighthouse/.venv/bin/activate && lighthouse && deactivate"

# sshing
alias zssh1="ssh egotkowski@aus-ds-prd-01-tst.q2dc.local -t 'zsh -l'"
alias zssh2="ssh egotkowski@aus-ds-prd-02-tst.q2dc.local -t 'zsh -l'"
alias zssh3="ssh egotkowski@aus-ds-prd-03.q2dc.local -t 'zsh -l'"
alias zssh4="ssh egotkowski@aus-ds-prd-04.q2dc.local -t 'zsh -l'"
alias zssh5="ssh egotkowski@aus-ds-prd-05.q2dc.local -t 'zsh -l'"
alias zssh6="ssh egotkowski@aus-ds-prd-06.q2dc.local -t 'zsh -l'"
alias zssh7="ssh egotkowski@aus-ds-prd-07.q2dc.local -t 'zsh -l'"
alias zsshdal="ssh egotkowski@dal-ds-prd-01.q2dc.local -t 'zsh -l'"
alias zsshdev="ssh egotkowski@aus-ds-dev-01.q2dc.local -t 'zsh -l'"
alias zaws="ssh egotkowski@10.235.25.247 -t 'zsh -l'"

# venvs
alias vmig="source ~/py_venvs/py312_mig/.venv/bin/activate"
alias vds="source ~/py_venvs/py312_ds/.venv/bin/activate"
eval "$($HOME/.local/bin/starship init zsh)"
