# Install VSCode extensions
if command_does_not_exist code; then
  error "Open VS Code and run: Install code command in \$PATH"
else
  for extension in $(cat vscode/extensions); do
    code --install-extension "$extension"
  done
fi

# Repeated keys in VSCode _won't_ pop up the accent/umlaut menu
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# Command-line fuzzy finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --key-bindings --completion --update-rc 