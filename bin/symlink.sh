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
    [[ $(basename "$file") == ".vscode" ]] && continue

    # Skip if symlink or file already exists.
    if [ -e "$HOME/$(basename "$file")" ]; then
        echo "File already exists: $HOME/$(basename "$file")"
        echo "You should remove or backup the file before creating a symlink"
        continue
    fi

    # Create a symlink for the file.
    echo "Creating symlink for $file"
    ln -snfv "$file" "$HOME"
    echo "Finished creating symlink for $file"
done

# Create symlinks for all directories.
# TODO: Implement this.
