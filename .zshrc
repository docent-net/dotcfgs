ZSH=$HOME/.oh-my-zsh
ZSH_THEME="clean"
plugins=(git common-aliases cp fabric zshrc gpg-agent screen yum)
source $ZSH/oh-my-zsh.sh
export PATH=$HOME/bin:/usr/local/bin:$PATH
export EDITOR='vim'

alias mutt=$HOME/soft/mutt/bin/mutt
alias fucking='/usr/bin/sudo'
