export DOTNET_CLI_TELEMETRY_OPTOUT=1
export TERMINAL=/usr/bin/gnome-terminal
export EDITOR=/usr/bin/emacs
export PATH=$PATCH:$HOME/.local/bin

if [ -d $HOME/.mos ]
then
    alias mos=$HOME/.mos/bin/mos
fi

alias ssh=ssh -4