# .zshrc

[日本語はこちら](README.ja.md)

This is my own configuration of zsh. Heavily depending on home brew so is for Mac OS.

1. **[IMPORTANT]** Set the following code in your `.zshrc` file

```zsh
# ~/.zshrc

# Grab zsh config from this repo
if [ -f "$HOME/.config/zsh/.zshrc" ]; then
  source "$HOME/.config/zsh/.zshrc"
fi
```

2. Clone this repo
`git clone https://github.com/kei95/zsh ~/.config/zsh`

3. Install prequired modules

```markdown
1.  Install [Homebrew](https://brew.sh/) and make sure it's in your PATH
2.  Install zsh: `brew install zsh`
3.  Install starship: `brew install starship`
4.  Install zsh-autosuggestions: `brew install zsh-autosuggestions`
5.  Install zsh-syntax-highlighting: `brew install zsh-syntax-highlighting`
6.  (Optional) Install [Neovim](https://neovim.io/) and set it up as your default editor
```

4. Restart your terminal or run `source ~/.zshrc` to apply the changes.

## `hidden/` Directory

Use this directory to store any sensitive information or configurations that it specific to your environment. This directory is included in the `.gitignore` file to prevent accidental commits of sensitive data. In order to make files recognizeable by the main `.zshrc`, you simply create files with `.zsh` extension.

example:

```
hidden/
├── script.zsh
└── secret.zsh
```

## Starship Configuration (Prompt Customization)

Starship is system prompt customization tool. It gives you great presets out of the box. I personally use gruvbox-rainbow preset. If you would, you can set it up by running the following command:

`starship preset gruvbox-rainbow -o ~/.config/starship.toml`

If you wanted, you could also customize it further by editing the `~/.config/starship.toml` file. Look here for more details: [Starship Configuration](https://starship.rs/config/)
