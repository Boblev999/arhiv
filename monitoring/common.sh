#!/bin/bash

# Колірні константи
GREEN="\e[1m\e[1;32m" # зелений колір
RED="\e[1m\e[1;31m"   # червоний колір
BLUE='\033[0;34m'     # синій колір
YELLOW="\e[1m\e[1;33m" # жовтий колір
NC="\e[0m"            # без кольору

# Функція для виведення логотипу (через curl)
function printLogo {
  LOGO=$(curl -s https://raw.githubusercontent.com/Boblev999/arhiv/refs/heads/main/monitoring/logo.sh)
  echo "$LOGO"
}

# Або функція для виведення логотипу (локально)
function printLogoLocal {
  echo -e "\033[0;34m"
  echo "     .o8                                   oooo                    oooo                                 oooo "
  echo "    \"888                                   \`888                    \`888                                 \`888     "
  echo "     888oooo.  oooo d8b  .ooooo.   .oooo.o  888  oooo  oooo  oooo   888  oo.ooooo.   .ooooo.   .oooo.    888  oooo     "
  echo "     d88' \`88b \`888\"\"8P d88' \`88b d88(  \"8  888 .8P'   \`888  \`888   888   888' \`88b d88' \`88b \`P  )88b   888 .8P'     "
  echo "     888   888  888     888ooo888 \`\"Y88b.   888888.     888   888   888   888   888 888ooo888  .oP\"888   888888.     "
  echo "     888   888  888     888    .o o.  )88b  888 \`88b.   888   888   888   888   888 888    .o d8(  888   888 \`88b.     "
  echo "     \`Y8bod8P' d888b    \`Y8bod8P' 8\"\"888P' o888o o888o  \`V88V\"V8P' o888o  888bod8P' \`Y8bod8P' \`Y888\"\"8o o888o o888o     "
  echo "                                                                          888     "
  echo "                                                                         o888o     "
  echo -e "\033[0;32m"
  echo "                                                                          breskulpeak.com"
  echo -e "\e[0m"
}

# Функція для виведення лінії
function printLine {
  echo "------------------------------------------------------------------------------------"
}

# Функція для виведення тексту зеленим кольором
function printGreen {
  echo -e "${GREEN}${1}${NC}"
}

# Функція для виведення тексту червоним кольором
function printRed {
  echo -e "${RED}${1}${NC}"
}

# Функція для виведення тексту синім кольором
function printBlue {
  echo -e "${BLUE}${1}${NC}"
}

# Функція для виведення тексту жовтим кольором
function printYellow {
  echo -e "${YELLOW}${1}${NC}"
}

# Функція для додавання шляху до PATH
function addToPath {
  source $HOME/.bash_profile
  PATH_EXIST=$(grep "${1}" $HOME/.bash_profile)
  if [ -z "$PATH_EXIST" ]; then
    echo "export PATH=\$PATH:${1}" >> $HOME/.bash_profile
  fi
}
