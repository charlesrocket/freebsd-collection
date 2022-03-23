export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$HOME/bin:$HOME/.cargo/bin
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=sway
export XDG_PICTURES_DIR=$HOME/pictures
export QT_QPA_PLATFORM=wayland-egl
export QT_QPA_PLATFORMTHEME=qt5ct
#export QT_SCALE_FACTOR=1
#export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export QT_WAYLAND_FORCE_DPI=96 #physical
export ECORE_EVAS_ENGINE=wayland_egl
export ELM_ENGINE=wayland_egl
export SDL_VIDEODRIVER=wayland
export MOZ_ENABLE_WAYLAND=1
export GPG_TTY=$(tty)
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gozilla"
DISABLE_AUTO_UPDATE="false"
DISABLE_UPDATE_PROMPT="true"
source $ZSH/oh-my-zsh.sh

if test -z "${XDG_RUNTIME_DIR}"; then
    export XDG_RUNTIME_DIR=/tmp/${UID}-runtime-dir
    if ! test -d "${XDG_RUNTIME_DIR}"; then
        mkdir "${XDG_RUNTIME_DIR}"
        chmod 0700 "${XDG_RUNTIME_DIR}"
    fi
fi
