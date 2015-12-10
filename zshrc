source /Users/limbo/.zsh_local
source /Users/limbo/.zsh_aliases
source /Users/limbo/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle colored-man-pages
antigen bundle history
antigen bundle sudo
antigen bundle nyan
antigen bundle tmux

# antigen bundle tarruda/zsh-autosuggestions
# antigen bundle git
# antigen bundle heroku
# antigen bundle pip
# antigen bundle lein
# antigen bundle autojump
# antigen bundle rimraf/k
# antigen bundle wd  # 目录名
# antigen bundle brew  # 补全 brews
# antigen bundle dbkaplun/smart-cd


# Load the theme.
antigen theme ys


# start suggestions
# zle-line-init() {
#     zle autosuggest-start
# }
# zle -N zle-line-init

# Tell antigen that you're done.
antigen apply

# bind P and N for EMACS mode
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down
