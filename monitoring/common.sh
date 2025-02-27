GREEN="\e[1m\e[1;32m" # green color
RED="\e[1m\e[1;31m" # red color
BLUE='\033[0;34m'   # blue color
YELLOW="\e[1m\e[1;33m"  # yellow color
NC="\e[0m"          # no color

function printLogo {
  printf "\033[0;34m%s\033[0m\n" "     .o8                                   oooo                    oooo                                 oooo "
  printf "%s\n" '    "888                                   `888                    `888                                 `888     '
  printf "%s\n" "     888oooo.  oooo d8b  .ooooo.   .oooo.o  888  oooo  oooo  oooo   888  oo.ooooo.   .ooooo.   .oooo.    888  oooo     "
  printf "%s\n" "     d88' \`88b \`888\"\"8P d88' \`88b d88(  \"8  888 .8P'   \`888  \`888   888   888' \`88b d88' \`88b \`P  )88b   888 .8P'     "
  printf "%s\n" "     888   888  888     888ooo888 \`\"Y88b.   888888.     888   888   888   888   888 888ooo888  .oP\"888   888888.     "
  printf "%s\n" "     888   888  888     888    .o o.  )88b  888 \`88b.   888   888   888   888   888 888    .o d8(  888   888 \`88b.     "
  printf "%s\n" "     \`Y8bod8P' d888b    \`Y8bod8P' 8\"\"888P' o888o o888o  \`V88V\"V8P' o888o  888bod8P' \`Y8bod8P' \`Y888\"\"8o o888o o888o     "
  printf "%s\n" "                                                                          888     "
  printf "%s\n" "                                                                         o888o     "
  printf "\033[0;32m%s\033[0m\n" "                                                                          breskulpeak.com"
}

function printLine {
  echo "------------------------------------------------------------------------------------"
}

function printGreen {
  echo -e "${GREEN}${1}${NC}"
}

function printRed {
  echo -e "${RED}${1}${NC}"
}

function printBlue {
  echo -e "${BLUE}${1}${NC}"
}

function printYellow {
  echo -e "${YELLOW}${1}${NC}"
}

function addToPath {
  source $HOME/.bash_profile
  PATH_EXIST=$(grep "${1}" $HOME/.bash_profile)
  if [ -z "$PATH_EXIST" ]; then
    echo "export PATH=\$PATH:${1}" >> $HOME/.bash_profile
  fi
}
