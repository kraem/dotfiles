# vim keys
bindkey -v

# Fix backspace when in normal vi mode
# https://superuser.com/questions/476532/how-can-i-make-zshs-vi-mode-behave-more-like-bashs-vi-mode/533685#533685
#bindkey "^?" delete-char
# https://superuser.com/questions/983016/zsh-delete-keybinding
bindkey "\e[3~" delete-char
# https://dougblack.io/words/zsh-vi-mode.html
bindkey '^?' backward-delete-char
