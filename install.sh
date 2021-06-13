#!/usr/bin/env bash

# check if git was installed
command -v git >/dev/null 2>&1 || {
    echo >&2 "I require git but it's not installed. Aborting...";
    exit 0;
}

# check if brew was installed
command -v brew >/dev/null 2>&1 || {
    echo >&2 "I require brew but it's not installed. Aborting...";
    exit 0;
}

# clean up
rm -Rf ~/.gitconfig
rm -Rf ~/.osx
rm -Rf ~/.p10k.zsh
rm -Rf ~/.zshrc
rm -Rf ~/.aliases
rm -Rf ~/.exports
rm -Rf ~/.env-setup
rm -Rf ~/.oh-my-zsh
rm -Rf ~/.zsh


REPO="https://github.com/rafarlopes/env-setup.git"

git clone $REPO ~/.env-setup

brew install \
    ansible \
    gh \
    helm \
    openssl@1.1 \
    powerlevel10k \
    python@3.9 \
    sqlite \
    tree \
    zsh \
    awscli \
    jq \
    terraform \
    watch \
    zsh-completions \
    go \
    git \
    zsh-history-substring-search

bash <(curl -s https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --unattended

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

cp -Rf ~/.env-setup/dotfiles/.gitconfig ~/.gitconfig
cp -Rf ~/.env-setup/dotfiles/.osx ~/.osx
cp -Rf ~/.env-setup/dotfiles/.p10k.zsh ~/.p10k.zsh
cp -Rf ~/.env-setup/dotfiles/.zshrc ~/.zshrc
cp -Rf ~/.env-setup/scripts/.aliases ~/.aliases
cp -Rf ~/.env-setup/scripts/.exports ~/.exports