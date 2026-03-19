#!/bin/bash

# ================================
# Config
# ================================
REPO_URL="https://github.com/vuquikhtn/dsvn_aienabled_dev.git"
TARGET_DIR=".dsvn_aienabled_dev"

# ================================
# Ensure we are in workspace root
# ================================
WORKSPACE_ROOT="$(pwd)"

echo "Workspace root: $WORKSPACE_ROOT"

# ================================
# Clone or update
# ================================
if [ ! -d "$TARGET_DIR" ]; then
    echo "Cloning into $TARGET_DIR ..."
    git clone "$REPO_URL" "$TARGET_DIR"
else
    echo "Repo already exists. Pulling latest..."
    cd "$TARGET_DIR" || exit
    git pull
    cd ..
fi

# ================================
# Done
# ================================
echo "DSVN AI repo ready at:"
echo "$WORKSPACE_ROOT/$TARGET_DIR"
