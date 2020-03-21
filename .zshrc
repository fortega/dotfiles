export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=( git fedora dnf aws gcloud mvn )

source $ZSH/oh-my-zsh.sh

if [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]
then
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
else
    echo "/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh not found"
fi

if [[ $(command -v podman) ]]
then
    alias docker="podman"
fi

export TZ="America/Santiago"

alias ssh="ssh-add -l; [[ \$? -eq 1 ]] && ssh-add; ssh -4"
alias k="kubectl"
