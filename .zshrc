# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/wangjp/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="risto"

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
DISABLE_AUTO_UPDATE="true"

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
DISABLE_UNTRACKED_FILES_DIRTY="true"

SAVEHIST=100000
HISTFILE=~/.zsh_history

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
plugins=(
  git
  autojump
  git ssh-agent
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

#------------------------------------- my software ------------------------------------------

if [ -d "/ssd1/exec/wangjp/" ]; then
    # llvm and clang-format
    export PATH=/ssd1/exec/wangjp/tools/llvm/bin:$PATH

    # miniconda
    export PATH=/ssd1/exec/wangjp/tools/miniconda/bin:$PATH

    # python3
    export PATH=/ssd1/exec/wangjp/tools/python3/bin:$PATH

    # vim8.1
    export PATH=/ssd1/exec/wangjp/tools/vim81/bin:$PATH

    # tmux
    export PATH=/ssd1/exec/wangjp/tools/tmux/bin:$PATH

    # bin
    export PATH=/ssd1/exec/wangjp/tools/bin:$PATH

    export PATH=/ssd1/exec/wangjp/tools/cmake-3.18.0/local/bin:$PATH
    export PATH=/usr/local/cuda/bin:/ssd1/slurm/bin:/usr/libexec/git-core:$PATH

    export LD_LIBRARY_PATH=/disk1/fukai/software/lib:$LD_LIBRARY_PATH
    export LD_LIBRARY_PATH=/usr/local/cuda/lib64:/usr/local/lib:$LD_LIBRARY_PATH

    # cuda9
    export CUDA_HOME=/usr/local/cuda
    export TORCH_HOME=/ssd1/exec/wangjp/tools/torchhub/
    export CMAKE_ROOT=/ssd1/exec/wangjp/tools/cmake-3.18.0/local

    SUBWORD=/ssd1/exec/wangjp/commons/subword-nmt
    SELFTOK=/ssd1/exec/wangjp/commons/tokenizer/ydmt_language/bin
    ERRANT=/ssd1/exec/wangjp/commons/errant
    M2SCORER=/ssd1/exec/wangjp/commons/m2scorer/m2scorer/
    FAST_ALIGN=/ssd1/exec/wangjp/commons/fast_align/build/fast_align

    alias yidlegpu='yidlegpu -g'
    alias squeue='squeue --format="%8i%9P%50j%11M%7u%3t%6b%7Q%8N"'
    alias j='jobs'

    ulimit -c unlimited

elif [ $HOSTNAME = 'zj034' ]; then
    export PATH=/disk2/wangjp/.tools/bin:$PATH
    export PATH=/disk2/wangjp/.tools/vim81/bin:$PATH
    export PATH=/disk2/wangjp/.tools/valgrind/bin:$PATH
    export PATH=/disk2/wangjp/.tools/swig3/bin:$PATH
    export PATH=/disk2/wangjp/.tools/graphviz/bin:$PATH
    export PATH=/disk2/wangjp/.tools/miniconda2/bin:$PATH

    export PATH=/usr/libexec/git-core:$PATH

    export LD_LIBRARY_PATH=/disk2/wangjp/.tools/miniconda2/envs/torch041/lib:$LD_LIBRARY_PATH

    ulimit -c unlimited

elif [ $HOSTNAME = 'zj186.corp.yodao.com' ]; then
    export PATH=/disk1/wangjp/tools/miniconda/bin:$PATH

fi

