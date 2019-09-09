
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/home/saeed/.local/bin

# Path to your oh-my-zsh installation.
export ZSH="/home/saeed/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
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
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# zsh-syntax-highlighting
plugins=(git )



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



# ------------------------
#	Zsh Syntax Higlighing
# ------------------------
# typeset -gA ZSH_HIGHLIGHT_STYLES ZSH_HIGHLIGHT_PATTERNS

# ZSH_HIGHLIGHT_STYLES[cursor]=fg=yellow,bold
# ZSH_HIGHLIGHT_STYLES[default]=none
# ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=green,bold
# ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=green,bold
# ZSH_HIGHLIGHT_STYLES[alias]=fg=cyan,bold
# ZSH_HIGHLIGHT_STYLES[builtin]=fg=cyan,bold
# ZSH_HIGHLIGHT_STYLES[function]=fg=cyan,bold
# ZSH_HIGHLIGHT_STYLES[command]=fg=white,bold
# ZSH_HIGHLIGHT_STYLES[precommand]=fg=white,underline
# ZSH_HIGHLIGHT_STYLES[commandseparator]=none
# ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=green,bold
# ZSH_HIGHLIGHT_STYLES[path]=fg=214,underline
# ZSH_HIGHLIGHT_STYLES[globbing]=fg=063
# ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=white,underline
# ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=070
# ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=070
# ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
# ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=063
# ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=063
# ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=009
# ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=009
# ZSH_HIGHLIGHT_STYLES[assign]=none

## Override highlighter colors
#ZSH_HIGHLIGHT_STYLES[default]=none
#ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=009
#ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=009,standout
#ZSH_HIGHLIGHT_STYLES[alias]=fg=white,bold
#ZSH_HIGHLIGHT_STYLES[builtin]=fg=white,bold
#ZSH_HIGHLIGHT_STYLES[function]=fg=white,bold
#ZSH_HIGHLIGHT_STYLES[command]=fg=white,bold
#ZSH_HIGHLIGHT_STYLES[precommand]=fg=white,underline
#ZSH_HIGHLIGHT_STYLES[commandseparator]=none
#ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=009
#ZSH_HIGHLIGHT_STYLES[path]=fg=214,underline
#ZSH_HIGHLIGHT_STYLES[globbing]=fg=063
#ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=white,underline
##ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=green
##ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=green
#ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=070
#ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=070
#ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
#ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=063
#ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=063
#ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=009
#ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=009
#ZSH_HIGHLIGHT_STYLES[assign]=none

#ZSH_HIGHLIGHT_STYLES[path]='fg=underline'
#ZSH_HIGHLIGHT_STYLES[default]='none'
#ZSH_HIGHLIGHT_STYLES[cursor]='fg=yellow'
#ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red'
#ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=yellow'
#ZSH_HIGHLIGHT_STYLES[alias]='fg=cyan'
#ZSH_HIGHLIGHT_STYLES[builtin]='fg=cyan'
#ZSH_HIGHLIGHT_STYLES[function]='fg=cyan'
#ZSH_HIGHLIGHT_STYLES[command]='fg=cyan'
#ZSH_HIGHLIGHT_STYLES[precommand]='fg=green'
#ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=yellow'
#ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=green'
#ZSH_HIGHLIGHT_STYLES[path]='fg=white,underline'
#ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=grey,underline'
#ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=white'
#ZSH_HIGHLIGHT_STYLES[path_approx]='fg=white'
#ZSH_HIGHLIGHT_STYLES[globbing]='none'
#ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=green'
#ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=blue,bold'
#ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=blue,bold'
#ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='none'
#ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=magenta,bold'
#ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=magenta,bold'
#ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=cyan'
#ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=cyan'
#ZSH_HIGHLIGHT_STYLES[redirection]='fg=magenta'
#ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=cyan,bold'
#ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=green,bold'
#ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=magenta,bold'
#ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=yellow,bold'
#ZSH_HIGHLIGHT_STYLES[assign]='none'

# ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')

# ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor line)


# -----------------------
# 	POWERLEVEL9K
# -----------------------
















source $ZSH/oh-my-zsh.sh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
