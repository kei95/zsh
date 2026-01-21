#Prerequisites:
# 1. Install Homebrew and make sure it's in your PATH
# 2. Install zsh: brew install zsh
# 3. Install starship: brew install starship
# 4. Install zsh-autosuggestions: brew install zsh-autosuggestions
# 5. Install zsh-syntax-highlighting: brew install zsh-syntax-highlighting
# 6. Install Neovim and set it up as your default editor

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

##### node version manager. Uncomment and install fnm or replace with your favorite tool #####
eval "$(fnm env --use-on-cd --shell zsh)"

#### Read aliases 
ALIASES_FILE="$HOME/.config/zsh/aliases.zsh"  # 置き場所は任意。例として ~/.zsh/
if [ -f "$ALIASES_FILE" ]; then
  source "$ALIASES_FILE"
fi
