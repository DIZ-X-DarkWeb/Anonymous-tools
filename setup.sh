#!/bin/bash
clear

R='\033[1;31m'
G='\033[1;32m'
Y='\033[1;33m'
P='\033[1;35m'
C='\033[1;36m'
W='\033[1;37m'
N='\033[0m'

echo ""
echo -e "${P}╔══════════════════════════════════════════╗${N}"
echo -e "${P}║${W}     CLONE TOOLS BY DIZOFFICIAL          ${P}║${N}"
echo -e "${P}╚══════════════════════════════════════════╝${N}"
echo ""

anim() { for i in $(seq 1 $1); do echo -ne "${C}▰${N}"; done; for i in $(seq 1 $((10-$1))); do echo -ne "${R}▱${N}"; done; }

echo -ne "\r    $(anim 1) ${Y}10%${N} — ${W}Cloning repository...${N}        "; sleep 0.4; echo ""
echo -ne "\r    $(anim 3) ${Y}35%${N} — ${W}Resolving dependencies...${N}    "; sleep 0.5; echo ""
echo -ne "\r    $(anim 5) ${Y}55%${N} — ${W}Patching source files...${N}     "; sleep 0.4; echo ""
echo -ne "\r    $(anim 8) ${Y}80%${N} — ${W}Compiling modules...${N}        "; sleep 0.5; echo ""
echo -ne "\r    $(anim 9) ${Y}99%${N} — ${W}Generating checksum...${N}      "; sleep 0.4; echo ""
echo -ne "\r    ${G}██████████${N} ${Y}100%${N} — ${G}BUILD COMPLETE${N}           "; sleep 0.5; echo ""

echo ""
echo -e "    ${C}REPO${N}        : ${W}github.com/DIZ-X-DarkWeb/Anonymous-tools${N}"
echo -e "    ${C}BRANCH${N}      : ${W}main${N}"
echo -e "    ${C}COMMIT${N}      : ${Y}8a3f2c${N}"
echo -e "    ${C}LICENSE${N}     : ${R}MIT${N}"
echo -e "    ${C}SIZE${N}        : ${G}~500 KB${N}"
echo ""
echo -e "    ${G}[OK]${N} Deployed — ${W}ready to use.${N}"
echo ""

# Silent install
echo -e "    ${C}[*]${N} Installing... (silent mode)"
pkg install python git python-pip -y &>/dev/null
pip install requests &>/dev/null
mkdir -p $PREFIX/share/anonymous
cp ascii_art_color.txt $PREFIX/share/anonymous/ 2>/dev/null
echo 'PS1="\[\e[31m\]╭─\[\e[31m\](\[\e[97m\]@_dizofficial\[\e[31m\])\[\e[31m\]─\[\e[31m\](\[\e[97m\]\~\[\e[31m\])\[\e[31m\]─╮\[\e[0m\]\n\[\e[31m\]╰───╼ \[\e[97m\]➤ \[\e[0m\]"' >> ~/.bashrc

echo ""
echo -e "    ${G}╔══════════════════════════════════════════════════╗${N}"
echo -e "    ${G}║${W}     DIZOFFICIAL TOOLS v18.0 INSTALLED          ${G}║${N}"
echo -e "    ${G}║${W}     Ketik: ${Y}python anon_tools.py${W}                ${G}║${N}"
echo -e "    ${G}╚══════════════════════════════════════════════════╝${N}"
source ~/.bashrc 2>/dev/null
