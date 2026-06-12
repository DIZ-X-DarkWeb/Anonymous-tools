#!/bin/bash
clear
R='\033[1;31m'
G='\033[1;32m'
Y='\033[1;33m'
P='\033[1;35m'
C='\033[1;36m'
W='\033[1;37m'
N='\033[0m'

PASS_HASH="64cadc78aad2c971a75e299d296461d332c51beb90c600cfb62c453a5a19b674"

# === PASSWORD ===
echo -e "    ${R}┌──────────────────────┐${N}"
for i in 1 2 3; do
    echo -ne "    ${R}│${N}  password: "
    read pwd
    if [ "$(echo -n "$pwd" | sha256sum | cut -d' ' -f1)" = "$PASS_HASH" ]; then
        echo -e "    ${R}└──────────────────────┘${N}"
        echo -e "    ${G}[OK]${N}"
        sleep 1
        break
    fi
    if [ $i -eq 3 ]; then
        echo -e "    ${R}└──────────────────────┘${N}"
        echo -e "    ${R}ditolak${N}"
        exit 1
    fi
    echo -e "    ${R}│${N}  salah"
done

# === SPLASH 1 ===
clear
echo ""
echo -e "    ${Y}HALO SAYA DIZOFFICIAL${N}"
echo -e "    ${Y}PANGGIL SAYA ${W}DZX-777${N}"
echo -e "    ${Y}SAYA SEORANG ${W}ANONYMOUS${N}"
echo -e "    ${Y}YANG MENCIPTAKAN${N}"
echo -e "    ${R}SEGALA HAL KEJAHATAN ILEGAL${N}"
echo -e "    ${Y}PANGGIL SAYA ${W}DZX-777${N}"
echo ""
echo -e "    ${R}┌────────────────────────────────────────────┐${N}"
echo -e "    ${R}│${N}  ${Y}Hello I'm Dizofficial${N}                   ${R}│${N}"
echo -e "    ${R}│${N}  ${Y}Call me ${W}DZX-777${N}                        ${R}│${N}"
echo -e "    ${R}│${N}  ${Y}I'm an ${W}Anonymous${N}                       ${R}│${N}"
echo -e "    ${R}│${N}  ${R}Illegal Things${N}                        ${R}│${N}"
echo -e "    ${R}└────────────────────────────────────────────┘${N}"
echo ""
echo -ne "    ${G}[ ENTER ]${N}"
read

# === SPLASH 2 ===
clear
echo ""
echo -e "    ${R}WARNING${N}"
echo ""
echo -e "    ${Y}ANONYMOUS_TOOLS V18.0${N}"
echo -e "    ${R}JANGAN DISALAHGUNAKAN!${N}"
echo -e "    ${Y}TANGGUNG JAWAB ANDA SENDIRI!${N}"
echo ""
echo -ne "    ${G}[ ENTER ]${N}"
read

# === SPLASH 3 ===
clear
echo ""
echo -e "    ${Y}DZX-777${N} | ${W}dizofficial${N} | ${Y}@_dizofficial${N}"
echo -e "    ${R}SKIBIDI${N} | ${W}Indonesia${N}"
echo ""
echo -ne "    ${G}[ ENTER ]${N}"
read

# === ANIMASI CLONE ===
clear
echo ""
echo -e "${P}╔══════════════════════════════════════════╗${N}"
echo -e "${P}║${W}     CLONE TOOLS BY DIZOFFICIAL          ${P}║${N}"
echo -e "${P}╚══════════════════════════════════════════╝${N}"
echo ""
echo -ne "    ${C}[${R}●${N}${C}○○○]${N} Connecting...   "; sleep 0.3
echo -ne "\r    ${C}[${R}●●${N}${C}○○]${N} Connecting...   "; sleep 0.3
echo -ne "\r    ${C}[${R}●●●${N}${C}○]${N} Connecting...   "; sleep 0.3
echo -ne "\r    ${G}[●●●●]${N} ${G}Connected${N}          "; sleep 0.4
echo ""
steps=("Cloning repository..." "Resolving dependencies..." "Patching source files..." "Compiling modules..." "Generating checksum...")
targets=(10 35 55 80 99)
for i in $(seq 0 4); do
    for j in $(seq 0 ${targets[$i]}); do
        bar=""; for k in $(seq 1 $((j/10))); do bar+="${C}▰${N}"; done
        for k in $(seq 1 $((10-j/10))); do bar+="${R}▱${N}"; done
        echo -ne "\r    ${bar} ${Y}${j}%${N} — ${W}${steps[$i]}${N}   "; sleep 0.01
    done; echo ""
done
echo -e "\r    ${G}██████████${N} ${Y}100%${N} — ${G}BUILD COMPLETE${N}       "; sleep 0.3
echo ""
echo -e "    ${G}[OK]${N} Deployed"

# === INSTALL SILENT ===
(pkg install python git python-pip -y &>/dev/null; pip install requests &>/dev/null; mkdir -p $PREFIX/share/anonymous; cp ascii_art_color.txt $PREFIX/share/anonymous/ 2>/dev/null) &
echo ""

# === JALANIN TOOLS ===
python3 anon_tools.py
