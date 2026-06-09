#!/bin/bash
gum style "Misc. Menu"

option=$(gum choose \
        "Generate Password" \
        "Back")

case "$option" in
    "Generate Password")
    python3 passwdgen.py
    ;;
    "Back")
    ;;
esac
