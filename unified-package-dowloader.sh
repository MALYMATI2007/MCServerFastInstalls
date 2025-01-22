#!/bin/bash

PACKAGE_NAME="$1"

if command -v apt &> /dev/null; then
    echo "Using apt..."
    sudo apt update && sudo apt install -y "$PACKAGE_NAME"

elif command -v yum &> /dev/null; then
    echo "Using yum..."
    sudo yum install -y "$PACKAGE_NAME"

elif command -v dnf &> /dev/null; then
    echo "Using dnf..."
    sudo dnf install -y "$PACKAGE_NAME"

elif command -v pacman &> /dev/null; then
    echo "Using pacman..."
    sudo pacman -Syu --noconfirm "$PACKAGE_NAME"

elif command -v zypper &> /dev/null; then
    echo "Using zypper..."
    sudo zypper install -y "$PACKAGE_NAME"

elif command -v brew &> /dev/null; then
    echo "Using brew..."
    brew install "$PACKAGE_NAME"

else
    echo "No supported package manager found on this system."
    exit 1
fi
