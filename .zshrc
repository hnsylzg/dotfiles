# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias sudo='sudo -E '
alias ll='ls -l'
alias la='ls -la'
# BASE16_SHELL="/usr/share/zsh/scripts/base16-shell/base16-twilight.dark.sh"
# [[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

. "$HOME/.local/bin/env"
