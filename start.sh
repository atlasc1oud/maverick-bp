#!/bin/bash
# start.sh — Maverick Boot Script
# Syncs identity files from GitHub on every boot
# Model: claude-sonnet-4-20250514 (all API calls)

set -e

REPO="https://github.com/[YOUR_GITHUB_ORG]/maverick-core.git"
IDENTITY_DIR="/data/workspace/identity"

echo "🟡 Maverick booting..."

# Ensure identity directory exists
mkdir -p "$IDENTITY_DIR"

# Pull latest identity files from GitHub
echo "📥 Syncing identity files from GitHub..."
if [ -d "$IDENTITY_DIR/.git" ]; then
  cd "$IDENTITY_DIR" && git pull origin main
else
  git clone "$REPO" "$IDENTITY_DIR"
fi

# Confirm identity files are present
echo "✅ Identity files loaded:"
ls "$IDENTITY_DIR"/*.md

# Load environment
echo "⚙️  Model: claude-sonnet-4-20250514"
echo "⚙️  Operator: BlockParty Productions"
echo "⚙️  Leadership: AJ Thomas + Lance Handy"

echo "🟢 Maverick is online. Ready."

# Start your application process here
# e.g., node server.js or python app.py