#!/usr/bin/env bash
# ==============================================================================
# Clean AI Code - Universal Installer Script
# Installs clean code anti-vice rules across AI coding assistants.
# ==============================================================================

set -e

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="${PWD}"

print_banner() {
  cat << "EOF"
============================================================
              Clean AI Code - Installer
      Eliminate AI Coding Vices from your Workflow
============================================================
EOF
}

install_antigravity_global() {
  echo "[+] Installing Antigravity / Gemini global skill & rule..."
  local skill_dir="$HOME/.gemini/config/skills/clean-code"
  local rule_dir="$HOME/.gemini/config/rules"

  mkdir -p "$skill_dir/references"
  mkdir -p "$rule_dir"

  cp "$REPO_ROOT/platforms/antigravity/skill/clean-code/SKILL.md" "$skill_dir/SKILL.md"
  cp "$REPO_ROOT/platforms/antigravity/skill/clean-code/references/anti-patterns.md" "$skill_dir/references/anti-patterns.md"
  cp "$REPO_ROOT/platforms/antigravity/rule/GEMINI.md" "$rule_dir/clean-code.md"

  echo "    Installed to: $skill_dir"
  echo "    Installed to: $rule_dir/clean-code.md"
}

install_antigravity_workspace() {
  echo "[+] Installing Antigravity / Gemini into current workspace ($TARGET_DIR)..."
  local skill_dir="$TARGET_DIR/.agents/skills/clean-code"
  mkdir -p "$skill_dir/references"

  cp "$REPO_ROOT/platforms/antigravity/skill/clean-code/SKILL.md" "$skill_dir/SKILL.md"
  cp "$REPO_ROOT/platforms/antigravity/skill/clean-code/references/anti-patterns.md" "$skill_dir/references/anti-patterns.md"
  cp "$REPO_ROOT/platforms/antigravity/rule/GEMINI.md" "$TARGET_DIR/GEMINI.md"

  echo "    Created: $TARGET_DIR/.agents/skills/clean-code/"
  echo "    Created: $TARGET_DIR/GEMINI.md"
}

install_cursor() {
  echo "[+] Installing Cursor rules into current workspace ($TARGET_DIR)..."
  mkdir -p "$TARGET_DIR/.cursor/rules"
  cp "$REPO_ROOT/platforms/cursor/rules/clean-code.mdc" "$TARGET_DIR/.cursor/rules/clean-code.mdc"
  cp "$REPO_ROOT/platforms/cursor/.cursorrules" "$TARGET_DIR/.cursorrules"

  echo "    Created: $TARGET_DIR/.cursor/rules/clean-code.mdc"
  echo "    Created: $TARGET_DIR/.cursorrules"
}

install_claude() {
  echo "[+] Installing Claude instructions (CLAUDE.md) into current workspace ($TARGET_DIR)..."
  cp "$REPO_ROOT/platforms/claude/CLAUDE.md" "$TARGET_DIR/CLAUDE.md"
  echo "    Created: $TARGET_DIR/CLAUDE.md"
}

install_copilot() {
  echo "[+] Installing GitHub Copilot instructions into current workspace ($TARGET_DIR)..."
  mkdir -p "$TARGET_DIR/.github"
  cp "$REPO_ROOT/platforms/copilot/copilot-instructions.md" "$TARGET_DIR/.github/copilot-instructions.md"
  echo "    Created: $TARGET_DIR/.github/copilot-instructions.md"
}

show_chatgpt() {
  echo ""
  echo "============================================================"
  echo "  ChatGPT Setup Instructions"
  echo "============================================================"
  echo "1. Open ChatGPT -> Settings -> Personalization -> Custom Instructions"
  echo "2. Paste the contents of 'platforms/chatgpt/custom_instructions.md' into"
  echo "   the 'How would you like ChatGPT to respond?' field."
  echo ""
}

show_help() {
  print_banner
  echo "Usage: ./install.sh [OPTION]"
  echo ""
  echo "Options:"
  echo "  --antigravity-global     Install skill and rule to ~/.gemini/config/ (Global)"
  echo "  --antigravity-local      Install skill and rule to current project (.agents/ and GEMINI.md)"
  echo "  --cursor                 Install .cursorrules and .cursor/rules/clean-code.mdc"
  echo "  --claude                 Install CLAUDE.md in current directory"
  echo "  --copilot                Install .github/copilot-instructions.md"
  echo "  --chatgpt                Display ChatGPT instructions"
  echo "  --all                    Install presets for all supported tools in current directory"
  echo "  --help                   Show this help message"
  echo ""
}

# Non-interactive CLI flag execution
if [ $# -gt 0 ]; then
  case "$1" in
    --antigravity-global)
      install_antigravity_global
      exit 0
      ;;
    --antigravity-local)
      install_antigravity_workspace
      exit 0
      ;;
    --cursor)
      install_cursor
      exit 0
      ;;
    --claude)
      install_claude
      exit 0
      ;;
    --copilot)
      install_copilot
      exit 0
      ;;
    --chatgpt)
      show_chatgpt
      exit 0
      ;;
    --all)
      install_antigravity_workspace
      install_cursor
      install_claude
      install_copilot
      show_chatgpt
      echo "[✓] All project presets installed successfully!"
      exit 0
      ;;
    --help)
      show_help
      exit 0
      ;;
    *)
      echo "Unknown option: $1"
      show_help
      exit 1
      ;;
  esac
fi

# Interactive menu if run with no arguments
print_banner
echo "Select the target AI platform to configure:"
echo "1) Antigravity / Gemini (Global for all projects: ~/.gemini/config/)"
echo "2) Antigravity / Gemini (Current project: .agents/ and GEMINI.md)"
echo "3) Cursor (.cursorrules & .cursor/rules/)"
echo "4) Claude Code / Projects (CLAUDE.md)"
echo "5) GitHub Copilot (.github/copilot-instructions.md)"
echo "6) All of the above (configure current project for all tools)"
echo "7) Show ChatGPT Instructions"
echo "8) Exit"
echo ""
read -rp "Enter choice [1-8]: " choice

case "$choice" in
  1) install_antigravity_global ;;
  2) install_antigravity_workspace ;;
  3) install_cursor ;;
  4) install_claude ;;
  5) install_copilot ;;
  6)
    install_antigravity_workspace
    install_cursor
    install_claude
    install_copilot
    show_chatgpt
    echo "[✓] All project presets installed successfully!"
    ;;
  7) show_chatgpt ;;
  8) echo "Exiting."; exit 0 ;;
  *) echo "Invalid choice."; exit 1 ;;
esac

echo "[✓] Setup complete!"
