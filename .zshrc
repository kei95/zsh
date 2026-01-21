##### Language/Editor #####
export LANG=en_US.UTF-8
export EDITOR=nvim

#### starship
eval "$(starship init zsh)"

#### autosuggestions
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#### fast syntax highlighting
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#### History search with arrow keys #####
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

#### Make word deletion stop at path separators, etc.
WORDCHARS=''

###### Delete texts with cmd+delete #####
bindkey '^[w' kill-whole-line

#### Read aliases 
alias open='nvim'

#### Apply hidden sources (ignored by Git; e.g., secrets or machine-specific)
#### It recursively reads all .zsh files in the hidden/ 
HIDDEN_ALIASES_DIR="$HOME/.config/zsh/hidden"
if [ -d "$HIDDEN_ALIASES_DIR" ]; then
  for f in "$HIDDEN_ALIASES_DIR"/*.zsh(N); do
    if [ -r "$f" ] && [ -f "$f" ]; then
      source "$f"
    fi
  done
fi
