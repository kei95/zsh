# .zshrc

This is my own configuration of zsh. Heavily depending on home brew so is for Mac OS.

1. Set the following code in your `.zshrc` file
```zsh
# ~/.zshrc

# XDG準拠の場所に委譲
if [ -f "$HOME/.config/zsh/.zshrc" ]; then
  source "$HOME/.config/zsh/.zshrc"
fi
```

2. Clone this repo
`git clone https://github.com/kei95/zsh ~/.config/zsh`

3. Install prequired modules
```markdown
 1. Install [Homebrew](https://brew.sh/) and make sure it's in your PATH
 2. Install zsh: `brew install zsh`
 3. Install starship: `brew install starship`
 4. Install zsh-autosuggestions: `brew install zsh-autosuggestions`
 5. Install zsh-syntax-highlighting: `brew install zsh-syntax-highlighting`
 6. (Optional) Install [Neovim](https://neovim.io/) and set it up as your default editor
```
