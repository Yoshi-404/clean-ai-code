# Clean AI Code 🧼

> **AIコーディングの悪癖を根絶する。**  
> 不要な絵文字の乱用なし、「承知いたしました！」などの前置き・お世辞なし、`// ... 残りのコード ...` の省略なし、自明なコメントなし、過剰設計（YAGNI違反）なし。

**Google Antigravity / Gemini**, **ChatGPT**, **Cursor**, **Claude**, **GitHub Copilot** に対応したユニバーサルなAIクリーンコードスキル＆ルールセット。

[🇧🇷 Português (README.md)](./README.md) | [🇺🇸 English (README.en.md)](./README.en.md) | [🇯🇵 日本語 (README.ja.md)](./README.ja.md)

---

## 🎯 なぜこのプロジェクトが必要なのか？

AIアシスタントを使って開発を進める際、以下のような振る舞いにストレスを感じたことはありませんか？

1. **絵文字の乱用**: Gitコミット (`feat: add auth 🚀✨`)、コードコメント (`// 🔥 DB接続`)、ターミナルログへの装飾。
2. **無駄な前置きとお世辞**: *"かしこまりました！喜んでお手伝いいたします！"* や *"お役に立てれば幸いです！何か質問があればお気軽にどうぞ！"* といった無駄なトークン消費。
3. **怠慢なコード省略**: `// ... 残りのコードは変更なし ...` と省略され、クリップボードからのコピペやLinterが壊れる。
4. **自明すぎるコメント**: コードを見れば一目瞭然の処理にコメントをつける (`// countを1増やす: count++`)。
5. **過剰設計（YAGNI違反）**: シンプルな処理に対して過剰なデザインパターンやFactoryクラス、不要なnpmパッケージを勝手に追加する。
6. **放置されたダミーデータ**: 本番用コードの中に `// TODO: 後で実装する` や `userId = "123"` などのスタブを残す。
7. **プロンプト言語の無視**: ユーザーが日本語で質問したのに英語で返したり、言語が不自然に混ざる。

**Clean AI Code** は、プロンプト・ルール・スキルレベルでこれらを防止し、最高精度のシグナルとゼロノイズなコード出力を実現します。

---

## ⚡ ワンコマンドでの簡単インストール

リポジトリをクローンしてインストーラーを実行します:

```bash
git clone https://github.com/YOUR-USERNAME/clean-ai-code.git
cd clean-ai-code
./install.sh
```

CLIオプションを指定して特定のツールへ即座に反映することも可能です:

| プラットフォーム | コマンド |
| :--- | :--- |
| **Antigravity (マシン全体・グローバル)** | `./install.sh --antigravity-global` |
| **Antigravity (現在のプロジェクト)** | `./install.sh --antigravity-local` |
| **Cursor** | `./install.sh --cursor` |
| **Claude (CLAUDE.md)** | `./install.sh --claude` |
| **GitHub Copilot** | `./install.sh --copilot` |
| **プロジェクト内の全ツールに一括適用** | `./install.sh --all` |

> **Windowsユーザー (PowerShell):**  
> `.\install.ps1 -All` または `.\install.ps1 -AntigravityGlobal`

---

## 📦 プラットフォーム別の手動設定

スクリプトを使わず手動で導入したい場合は、`platforms/` ディレクトリ内のファイルをコピーして使用してください:

### 1. Google Antigravity / Gemini CLI
以下のいずれかの方法を選択できます:

* **方法 A - グローバルルール（すべてのプロジェクトで常時有効・推奨）:**  
  [`platforms/antigravity/rule/GEMINI.md`](./platforms/antigravity/rule/GEMINI.md) を以下にコピーします:  
  `~/.gemini/config/rules/clean-code.md`

* **方法 B - スキルとしてオンデマンド利用:**  
  [`platforms/antigravity/skill/clean-code`](./platforms/antigravity/skill/clean-code) フォルダを以下に配置します:  
  - グローバル: `~/.gemini/config/skills/clean-code/`  
  - プロジェクト限定: `.agents/skills/clean-code/`

---

### 2. ChatGPT (Web & モバイル)
1. ChatGPTを開き、**設定 (Settings)** > **パーソナライズ (Personalization)** > **カスタム指示 (Custom Instructions)** を開きます。
2. **「ChatGPTにどのように回答してほしいですか？」(How would you like ChatGPT to respond?)** の入力欄に、以下のファイル内容を貼り付けます:  
   👉 [`platforms/chatgpt/custom_instructions.md`](./platforms/chatgpt/custom_instructions.md)
3. 保存すると、以降のすべてのチャットにクリーンコード規約が適用されます。

*(Custom GPTs や OpenAI API で使用する場合は、[`platforms/chatgpt/system_prompt.txt`](./platforms/chatgpt/system_prompt.txt) を使用してください。)*

---

### 3. Cursor
* **モダンなMDC形式**: [`platforms/cursor/rules/clean-code.mdc`](./platforms/cursor/rules/clean-code.mdc) をプロジェクトの `.cursor/rules/clean-code.mdc` にコピーします。
* **レガシー形式**: [`platforms/cursor/.cursorrules`](./platforms/cursor/.cursorrules) をプロジェクトルートにコピーします。

---

### 4. Claude Code & Claude Projects
[`platforms/claude/CLAUDE.md`](./platforms/claude/CLAUDE.md) をプロジェクトルートに配置します。Claude Code および Claude Projects が自動的に読み込みます。

---

### 5. GitHub Copilot
[`platforms/copilot/copilot-instructions.md`](./platforms/copilot/copilot-instructions.md) をプロジェクトの `.github/copilot-instructions.md` にコピーします。

---

## 🔍 Before vs. After（実際の比較）

| シチュエーション | デフォルトのAI（悪癖あり） | Clean AI Code 適用後 |
| :--- | :--- | :--- |
| **質問への返答** | *"承知いたしました！喜んでお手伝いします！こちらがコードです..."* | 余計な挨拶なしで即座にコードと解説を出力 |
| **Gitコミット** | `feat: add user login 🚀🔥✨` | `feat(auth): implement session validation` |
| **コードの修正** | `// ... 残りのコードは変更なし ...` | 完全で動作するファイル、または正確な差分（diff） |
| **コードコメント** | `// カウントを1増やす: count++` | 構文のオウム返しなし。必要なビジネスロジックのみ記録 |
| **アーキテクチャ** | 5行の関数に対して無駄なFactoryパターンを生成 | 標準APIを活用した最もシンプルで保守しやすい設計 |
| **言語の追従** | 日本語で聞いたのに英語で長文解説 | ユーザーが入力した言語（日本語・英語・ポルトガル語等）に合わせて回答 |

👉 詳細な比較例: [`examples/before-after.md`](./examples/before-after.md)  
👉 AIの悪癖カタログ: [`examples/bad-habits-hall-of-shame.md`](./examples/bad-habits-hall-of-shame.md)

---

## 📂 リポジトリ構成

```text
clean-ai-code/
├── CORE_RULES.md            # 最も厳格な基本ルール（モデル遵守率を高めるため英語で記述）
├── README.md                # ポルトガル語ドキュメント
├── README.en.md             # 英語ドキュメント
├── README.ja.md             # 日本語ドキュメント
├── install.sh               # Bash用ユニバーサルインストーラー (macOS / Linux)
├── install.ps1              # PowerShell用インストーラー (Windows)
├── platforms/
│   ├── antigravity/         # Antigravity & Gemini 用プリセット (Skill + Rule)
│   ├── chatgpt/             # ChatGPT 用プリセット (Custom Instructions & System Prompt)
│   ├── cursor/              # Cursor 用プリセット (.mdc および .cursorrules)
│   ├── claude/              # Claude 用プリセット (CLAUDE.md)
│   └── copilot/             # GitHub Copilot 用プリセット (.github/copilot-instructions.md)
└── examples/
    ├── before-after.md      # Before vs After の実例比較
    └── bad-habits-hall-of-shame.md # AIコーディング悪癖の殿堂
```

---

## 🤝 コントリビューション

新しいモデルのアップデートで新たなAIの悪癖を発見しましたか？
1. 本リポジトリをForkしてください。
2. `CORE_RULES.md` および各プラットフォームの設定ファイルに新しいルールを追加します。
3. Pull Requestをお送りください！

---

## 📄 ライセンス

本プロジェクトは [MIT License](./LICENSE) のもとで公開されています。個人・商用問わず自由にご利用いただけます。
