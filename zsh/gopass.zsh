if type "gopass" > /dev/null; then
  # https://github.com/gopasspw/gopass/issues/585
  source <(gopass completion zsh | head -n -1 | tail -n +2)
  compdef _gopass gopass
  export GOPASS_DISABLE_MIME=1
fi
