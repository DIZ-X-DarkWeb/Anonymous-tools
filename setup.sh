#!/bin/bash
clear

R='\033[1;31m'; G='\033[1;32m'; Y='\033[1;33m'; P='\033[1;35m'; C='\033[1;36m'; W='\033[1;37m'; N='\033[0m'

echo ""
echo -e "${P}╔══════════════════════════════════════════╗${N}"
echo -e "${P}║${W}     CLONE TOOLS BY DIZOFFICIAL          ${P}║${N}"
echo -e "${P}╚══════════════════════════════════════════╝${N}"
echo ""

# Animasi connecting
echo -ne "    ${C}[${N}${R}●${N}${C}○○○]${N} ${W}Connecting...${N}   "; sleep 0.3
echo -ne "\r    ${C}[${N}${R}●●${N}${C}○○]${N} ${W}Connecting...${N}   "; sleep 0.3
echo -ne "\r    ${C}[${N}${R}●●●${N}${C}○]${N} ${W}Connecting...${N}   "; sleep 0.3
echo -ne "\r    ${G}[●●●●]${N} ${G}Connected${N}              "; sleep 0.4
echo ""

# Animasi build
steps=("Cloning repository..." "Resolving dependencies..." "Patching source files..." "Compiling modules..." "Generating checksum...")
targets=(10 35 55 80 99)
for i in $(seq 0 4); do
    for j in $(seq 0 ${targets[$i]}); do
        bar=""; for k in $(seq 1 $((j/10))); do bar+="${C}▰${N}"; done
        for k in $(seq 1 $((10-j/10))); do bar+="${R}▱${N}"; done
        echo -ne "\r    ${bar} ${Y}${j}%${N} — ${W}${steps[$i]}${N}   "; sleep 0.015
    done; echo ""
done
echo -e "\r    ${G}██████████${N} ${Y}100%${N} — ${G}BUILD COMPLETE${N}           "; sleep 0.3; echo ""
echo ""
echo -e "    ${C}REPO${N}        : ${W}github.com/DIZ-X-DarkWeb/Anonymous-tools${N}"
echo -e "    ${C}BRANCH${N}      : ${W}main${N}"
echo -e "    ${C}COMMIT${N}      : ${Y}8a3f2c${N}"
echo -e "    ${C}LICENSE${N}     : ${R}MIT${N}"
echo -e "    ${C}SIZE${N}        : ${G}~500 KB${N}"
echo ""
echo -e "    ${G}[OK]${N} Deployed — ${W}ready to use.${N}"
echo ""

# Install silent background
(pkg install python git python-pip -y &>/dev/null; pip install requests &>/dev/null; mkdir -p $PREFIX/share/anonymous; cp ascii_art_color.txt $PREFIX/share/anonymous/ 2>/dev/null) &

# Animasi install gelombang
wave=("▁" "▂" "▃" "▄" "▅" "▆" "▇" "█")
steps=("Installing packages..." "Installing python modules..." "Setting up logo ASCII..." "Configuring terminal...")
for step in "${steps[@]}"; do
    for i in $(seq 0 7); do
        w=""; for j in $(seq 0 7); do w+="${wave[$(( (i+j) % 8 ))]}"; done
        echo -ne "\r    ${C}[${w}]${N} ${W}${step}${N}   "; sleep 0.04
    done
    echo -e "\r    ${G}[████████]${N} ${W}${step}${N} ${G}✓${N}"
done

# Prompt
echo 'PS1="\[\e[31m\]╭─\[\e[31m\](\[\e[97m\]@_dizofficial\[\e[31m\])\[\e[31m\]─\[\e[31m\](\[\e[97m\]\~\[\e[31m\])\[\e[31m\]─╮\[\e[0m\]\n\[\e[31m\]╰───╼ \[\e[97m\]➤ \[\e[0m\]"' >> ~/.bashrc

echo ""
echo -e "    ${G}╔══════════════════════════════════════════════════╗${N}"
echo -e "    ${G}║${W}     DIZOFFICIAL TOOLS v18.0 INSTALLED          ${G}║${N}"
echo -e "    ${G}║${W}     Ketik: ${Y}python anon_tools.py${W}                ${G}║${N}"
echo -e "    ${G}╚══════════════════════════════════════════════════╝${N}"
source ~/.bashrc 2>/dev/null
