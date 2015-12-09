source /Users/limbo/.zsh_local
source /Users/limbo/.zsh_aliases
source /Users/limbo/.antigen/antigen.zsh

antigen use oh-my-zsh

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# antigen bundle https://github.com/tarruda/zsh-autosuggestions
antigen bundle tarruda/zsh-autosuggestions
# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle autojump
# antigen bundle wd  # 目录名
# antigen bundle brew  # 补全 brews
# antigen bundle dbkaplun/smart-cd
antigen bundle rimraf/k
# antigen bundle command-not-found  # 不支持mac


# Load the theme.
antigen theme jreese

# Tell antigen that you're done.
antigen apply

# start suggestions
# zle-line-init() {
#     zle autosuggest-start
# }
# zle -N zle-line-init

