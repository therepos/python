#!/bin/bash

# wget -qO- https://raw.githubusercontent.com/therepos/windows/main/scripts/uninstall-pyenv.sh | bash
# curl -sSL https://raw.githubusercontent.com/therepos/windows/main/scripts/uninstall-pyenv.sh | bash

# Ensure sudo is available
if ! command -v sudo &> /dev/null; then
    echo "sudo is not installed or available. Please install sudo or run as root."
    exit 1
fi

echo "Starting the uninstallation of pyenv and related components..."

# Remove pyenv configuration from bash initialization files
echo "Removing pyenv configuration from shell initialization files..."
sed -i '/export PYENV_ROOT/d' ~/.bashrc
sed -i '/export PATH="\$PYENV_ROOT\/bin:\$PATH"/d' ~/.bashrc
sed -i '/eval "\$(pyenv init --path)"/d' ~/.bashrc
sed -i '/export PYENV_ROOT/d' ~/.profile
sed -i '/export PATH="\$PYENV_ROOT\/bin:\$PATH"/d' ~/.profile
sed -i '/eval "\$(pyenv init --path)"/d' ~/.profile

# Remove pyenv installation directory
if [[ -d "$HOME/.pyenv" ]]; then
    echo "Removing pyenv directory..."
    rm -rf "$HOME/.pyenv"
else
    echo "pyenv directory not found. Skipping..."
fi

# Remove installed Python versions managed by pyenv
echo "Cleaning up installed Python versions..."
if command -v pyenv &> /dev/null; then
    pyenv uninstall --force $(pyenv versions --bare)
fi

# Reload shell to remove pyenv references
echo "Reloading shell to apply changes..."
source ~/.bashrc

# Uninstall packages installed specifically for pyenv
echo "Removing system packages installed for pyenv..."
sudo apt remove --purge -y build-essential curl libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python3-openssl git

# Final clean-up
echo "Cleaning up unused packages..."
sudo apt autoremove -y
sudo apt autoclean -y

# Verification
echo "Verifying uninstallation..."
if [[ ! -d "$HOME/.pyenv" ]] && ! grep -q 'pyenv' ~/.bashrc && ! grep -q 'pyenv' ~/.profile; then
    echo "pyenv and related configurations successfully uninstalled."
else
    echo "Some components of pyenv might not have been removed completely. Please check manually."
fi
