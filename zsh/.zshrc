# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=/Users/$USER/bin:$PATH 
export PATH=$HOME/go/bin:$PATH 
export PATH=$HOME/.cargo/env:$PATH 
export PATH=/Users/$USER/.local/share/bob/nvim-bin:$PATH
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

export GIT_EDITOR='nvim'
export VISUAL='nvim'
export EDITOR='nvim'

export TERM=xterm-256color

export TZ_LIST="US/Central;Asia/Kolkata;"

export PATH="/usr/local/sbin:$PATH"

source ~/.aliases
source $(brew --prefix powerlevel10k)/powerlevel10k.zsh-theme

# Sessionizer
bindkey "^f" "tmux-sessionizer\n"

# FZF
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
export FZF_DEFAULT_OPTS="--height=40% --layout=reverse --border --margin=1 --padding=1"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(/usr/local/bin/brew shellenv)"
eval "$(fnm env --use-on-cd)"
eval "$(zoxide init zsh)"
# eval "$(github-copilot-cli alias -- "$0")"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source $(brew --prefix powerlevel10k)/powerlevel10k.zsh-theme
