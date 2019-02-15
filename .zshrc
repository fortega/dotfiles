export TERMINAL=/usr/bin/gnome-terminal
export EDITOR=/usr/bin/emacs

# ZSH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(
  git fedora aws 
)

source $ZSH/oh-my-zsh.sh

if [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]
then
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
else
    echo "/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh not found"
fi

alias ssh=ssh -4
