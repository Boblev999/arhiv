# Колірні константи
GREEN="\e[1m\e[1;32m" # зелений колір
RED="\e[1m\e[1;31m"   # червоний колір
BLUE='\033[0;34m'     # синій колір
YELLOW="\e[1m\e[1;33m" # жовтий колір
NC="\e[0m"            # без кольору

# Функція для виведення логотипу (через curl)
function printLogo {
  bash <(curl -s https://raw.githubusercontent.com/Boblev999/arhiv/refs/heads/main/monitoring/logo.sh)
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
