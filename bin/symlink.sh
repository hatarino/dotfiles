#!/bin/bash
set -u

# Get the directory of dotfiles.
script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)
dotfile_dir=$(dirname "$script_dir")

# Create symlinks for all dotfiles.
for file in "$dotfile_dir"/.??*; do
    # Skip files.
    [[ $(basename "$file") == ".git" ]] && continue
    [[ $(basename "$file") == ".gitignore" ]] && continue

    # Create symlink.
    # TODO: Skip if symlink already exists.
    echo "Creating symlink for $file"
    ln -snfv "$file" "$HOME"
done

# Create symlinks for all directories.
# TODO: Implement this.
