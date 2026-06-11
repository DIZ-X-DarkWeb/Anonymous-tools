#!/bin/bash
clear

# Install requirements
pkg install python git python-pip -y 2>/dev/null
pip install -r requirements.txt 2>/dev/null

# Copy logo ASCII
mkdir -p $PREFIX/share/anonymous
cp ascii_art_color.txt $PREFIX/share/anonymous/ 2>/dev/null

# Set custom prompt
echo 'PS1="\[\e[31m\]╭─\[\e[31m\](\[\e[97m\]@_dizofficial\[\e[31m\])\[\e[31m\]─\[\e[31m\](\[\e[97m\]\~\[\e[31m\])\[\e[31m\]─╮\[\e[0m\]\n\[\e[31m\]╰───╼ \[\e[97m\]➤ \[\e[0m\]"' >> ~/.bashrc
source ~/.bashrc

echo ""
echo "╔══════════════════════════════════════════════════╗"
echo "║     DIZOFFICIAL TOOLS v18.0 INSTALLED          ║"
echo "║     Ketik: python anon_tools.py                ║"
echo "╚══════════════════════════════════════════════════╝"
