#!/bin/bash
# Install skills from Things4AIAgents repository to local Claude Code configuration

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Target directory
TARGET_DIR="$HOME/.claude/skills"
REPO_URL="https://github.com/kmftcy/Things4AIAgents.git"
TEMP_DIR=$(mktemp -d)

echo "Installing skills to $TARGET_DIR..."

# Clone repository
echo "Cloning repository..."
git clone --depth 1 "$REPO_URL" "$TEMP_DIR" > /dev/null 2>&1

# Create target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Copy skills
echo "Copying skills..."
cp -r "$TEMP_DIR"/skills/* "$TARGET_DIR/"

# Cleanup
rm -rf "$TEMP_DIR"

echo -e "${GREEN}✓ Skills installed successfully!${NC}"
echo "Available skills:"
ls -1 "$TARGET_DIR"
