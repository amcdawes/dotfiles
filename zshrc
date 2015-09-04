source /Users/dawes/dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle pip
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme robbyrussell

antigen apply

export PATH=$HOME/anaconda/bin:$HOME/bin:/usr/local/bin:/usr/local/git/bin:$PATH
