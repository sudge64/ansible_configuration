# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Linux ZSH Additions
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# macOS ZSH Additions
# source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh 
# export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Aliases
## Updates
alias updateD="sudo apt update -y && sudo apt upgrade -y && flatpak update -y"
alias updateF="sudo dnf upgrade -y && flatpak update -y"
alias updateA="sudo pacman -Syu -y && flatpak update -y"
alias updateM="brew update && brew upgrade"
## Shortcuts
alias ll="ls -l"
alias la="ls -a"
alias ld="ls -ld"
alias nv="nvim"

# PATH variables
export PATH="$HOME/.poetry/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
source "$HOME/.cargo/env"

# Fix for SSH
export TERM=xterm-256color
