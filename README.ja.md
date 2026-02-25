![Screenshot](.github/screenshot.png)

[![Configの動画](https://img.youtube.com/vi/qrKBLXqksTQ/0.jpg)](https://www.youtube.com/watch?v=qrKBLXqksTQ)

**Ghosttyの設定も上げています。ターミナルエミュレーターごと設定を合わせたい方はこちらを先に設定してみてください: https://github.com/kei95/ghostty/blob/main/README.ja.md**

# .zshrc

macOSまたはLinux上での個人的zsh設定です。Ghosttyチームの掲げる"Zero Configuration Philosophy (設定不要哲学)"に従い、必要最低限のカスタマイズのみを行った設定ファイルです。

シェルプロンプト、シンタックスハイライト、自動保管とコマンドの履歴検索などの機能が含まれています。

## 使用ツール

- [zsh](https://www.zsh.org/) - 対話型シェルとスクリプト言語インタプリタの両方として動作する強力なシェル。
- [Homebrew](https://brew.sh/) - macOS（またはLinux）用のパッケージマネージャー。
- [Starship](https://starship.rs/) - 高速でカスタマイズ性の高いシェルプロンプト。
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) - Fish風の高速で控えめな自動補完。
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) - Fish風のシンタックスハイライト。
- [Neovim](https://neovim.io/) (任意) - Vimベースの拡張性の高いテキストエディタ。

## 機能

### キーバインディング

| キー | 動作 |
|------|------|
| `↑` (上矢印) | 現在の入力から始まるコマンドを履歴から検索 |
| `↓` (下矢印) | 現在の入力から始まるコマンドを履歴から検索 |


### その他の設定

- **WORDCHARS**: 空文字列に設定。単語削除（`Ctrl+W`、`Alt+Backspace`）がパス区切り（`/`）やドットなどで止まるように。
- **LANG**: `en_US.UTF-8`に設定
- **EDITOR**: `nvim` (Neovim) に設定

### hiddenディレクトリの自動読み込み

`~/.config/zsh/hidden/`内のすべての`.zsh`ファイルが自動的に読み込まれます。マシン固有の設定やgitにコミットすべきでないシークレットを置くのに便利です。

## インストール

1. **[重要]** 以下のコードを`.zshrc`ファイルに追加してください

```zsh
# ~/.zshrc

# このリポジトリからzsh設定を読み込む
if [ -f "$HOME/.config/zsh/.zshrc" ]; then
  source "$HOME/.config/zsh/.zshrc"
fi
```

2. このリポジトリをクローン
`git clone https://github.com/kei95/zsh ~/.config/zsh`

3. 必要なモジュールをインストール

```markdown
1.  [Homebrew](https://brew.sh/)をインストールし、PATHに追加されていることを確認
2.  zshをインストール: `brew install zsh`
3.  starshipをインストール: `brew install starship`
4.  zsh-autosuggestionsをインストール: `brew install zsh-autosuggestions`
5.  zsh-syntax-highlightingをインストール: `brew install zsh-syntax-highlighting`
6.  (任意) [Neovim](https://neovim.io/)をインストールし、デフォルトエディタとして設定
```

4. ターミナルを再起動するか、`source ~/.zshrc`を実行して変更を適用

## `hidden/` ディレクトリ

このディレクトリは、環境固有の機密情報や設定を保存するために使用します。このディレクトリは`.gitignore`に含まれているため、機密データの誤コミットを防ぎます。メインの`.zshrc`にファイルを認識させるには、`.zsh`拡張子のファイルを作成しましょう。

例:

```
hidden/
├── script.zsh
└── secret.zsh
```

## Starship設定 (プロンプトのカスタマイズ)

Starshipはシステムプロンプトをカスタマイズするツールです。可愛いプリセットが用意されているのでインストールするだけでかなり変わります。僕は`gruvbox-rainbow`を使ってます。同じ設定にしたい場合は、以下のコマンドを実行してください:

`starship preset gruvbox-rainbow -o ~/.config/starship.toml`

さらにカスタマイズしたい場合は、`~/.config/starship.toml`ファイルを編集するとかなり詳細に変更できます。詳細はこちら: [Starship設定ドキュメント](https://starship.rs/config/)
