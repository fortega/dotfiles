export ZSH="$HOME/.oh-my-zsh"
ZSH_SYNTAX=/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if [[ -d $ZSH ]]
then
    ZSH_THEME="agnoster"
    plugins=( git fedora dnf aws gcloud mvn )
    source $ZSH/oh-my-zsh.sh
else
    echo oh-my-zsh not found. run:
    echo git clone https://github.com/ohmyzsh/ohmyzsh.git $ZSH
fi


if [ -f $ZSH_SYNTAX ]
then
    source $ZSH_SYNTAX
else
    echo "$ZSH_SYNTAX not found"
fi

if [[ $(command -v podman) && ! $(command -v docker) ]]
then
    alias docker="podman"
fi

export TZ="America/Santiago"
export PATH=$PATH:/usr/local/bin:$HOME/.local/bin

alias ssh="ssh-add -l; [[ \$? -eq 1 ]] && ssh-add; ssh -4"
alias k="kubectl"
alias sudok="sudo kubectl"
