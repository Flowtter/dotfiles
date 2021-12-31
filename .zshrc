export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
#plugins=(git)
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
mkcdir ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

cpmodel ()
{
    sudo cp "/home/flowtter/.wine/drive_c/models/$1.fdg" "/media/usb/$1.fdg"
}

cpblender ()
{
    sudo cp "/home/flowtter/blender/models/$1.obj" "/home/flowtter/.wine/drive_c/models/$1.obj"
}

cpusb ()
{
    sudo cp "/home/flowtter/export/$1.fdg" "/media/usb/$1.fdg"
}

alias "keyboard"="~/scripts/keyboard.sh"
alias loic.segundo="ls"
alias "code ?"="code ."
alias cy="code . && yarn start"


alias "f"="fuck"
alias ":q"="exit"
alias ":Q"="exit"
alias "musb"="sudo mount /dev/sda1 /media/usb"
alias "uusb"="sudo fusermount -u -z /media/usb"
alias "blender"="/home/flowtter/blender/blender/blender"


export LESS_TERMCAP_mb=$'\e[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\e[1;33m'     # begin blink
export LESS_TERMCAP_so=$'\e[01;44;37m' # begin reverse video
export LESS_TERMCAP_us=$'\e[01;37m'    # begin underline
export LESS_TERMCAP_me=$'\e[0m'        # reset bold/blink
export LESS_TERMCAP_se=$'\e[0m'        # reset reverse video
export LESS_TERMCAP_ue=$'\e[0m'        # reset underline
export GROFF_NO_SGR=1                  # for konsole and gnome-terminal

alias "gccx"="gcc -Wall -Werror -Wextra -std=c99 -pedantic -g *.c"

lychee-usb ()
{
    musb; cpusb "$1"; uusb
}
alias ccat='pygmentize -g -O style=colorful,linenos=1'

touchkdir ()
{
    mkdir -p $( dirname "$1"); touch "$1"
}

bindkey "^P" up-line-or-search
bindkey "^N" down-line-or-search
export TERM=xterm-256color

export PATH=~/go/bin:~/.cargo/bin:$PATH
echo 'export PATH=/usr/local/cuda-10.0/bin${PATH:+:${PATH}}' > $HOME/.bashrc

# looking for nmtui ? bluetoothctl ?
