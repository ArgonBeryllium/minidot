PS1="\[\e[0;32m\] \w \[\e[0;29m\]> "
source ~/.bash_aliases

[ -f ~/.cache/wal/sequences ] && cat ~/.cache/wal/sequences

[ $TERM == 'rxvt-unicode-256color' ] && TERM=rxvt


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
