alias vim=nvim
alias vi=nvim

alias feh="feh --auto-rotate --scale-down --auto-zoom"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias ll="exa -lgh --group-directories-first"
alias lld="exa -lghD --group-directories-first"
alias la="exa -algh --group-directories-first"
alias lad="exa -alghD --group-directories-first"

alias less="less -R"

alias clip="xclip -selection clipboard"
alias xsel="xsel -b"

function open() {
  xdg-open "$@" & disown
}

# --ignore-gpu-blacklist not needed anymore because of:
# https://github.com/NixOS/nixpkgs/pull/85253
# `chromium-browser` is the NixOS wrapper i believe
#alias chromium="chromium-browser --enable-gpu-rasterization --enable-native-gpu-memory-buffers --enable-zero-copy"

alias gitbrprune="git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -d"

alias ssh='TERM=xterm-256color ssh'

alias relwifi="sudo modprobe -r brcmfmac && sudo modprobe brcmfmac && sudo systemctl restart wpa_supplicant.service"

alias displaysleepdisable="xset -display :0.0 -dpms && xset s off"
alias displaysleepenable="xset -display :0.0 +dpms && xset s on"
