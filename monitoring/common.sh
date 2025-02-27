# Color variables
GREEN="\e[1;32m"    # Green color
RED="\e[1;31m"      # Red color
BLUE="\e[0;34m"     # Blue color
YELLOW="\e[1;33m"   # Yellow color
NC="\e[0m"          # No color (reset)

# Function to print the logo
function printLogo {
  # Download and execute the logo script from GitHub
  if curl -s https://raw.githubusercontent.com/Boblev999/arhiv/refs/heads/main/monitoring/logo.sh | bash; then
    echo -e "${GREEN}Logo printed successfully.${NC}"  # Success message
  else
    echo -e "${RED}Failed to print logo.${NC}"        # Error message
  fi
}

# Function to print a line of dashes
function printLine {
  echo "------------------------------------------------------------------------------------"
}

# Functions to print colored text
function printGreen {
  printf "${GREEN}%s${NC}\n" "$1"  # Print text in green
}
function printRed {
  printf "${RED}%s${NC}\n" "$1"    # Print text in red
}
function printBlue {
  printf "${BLUE}%s${NC}\n" "$1"   # Print text in blue
}
function printYellow {
  printf "${YELLOW}%s${NC}\n" "$1" # Print text in yellow
}

# Function to add a path to the PATH environment variable
function addToPath {
  # Check if the .bash_profile file exists; create it if it doesn't
  if [ ! -f "$HOME/.bash_profile" ]; then
    touch "$HOME/.bash_profile"
  fi

  # Check if the path already exists in .bash_profile
  if ! grep -qxF "export PATH=\$PATH:${1}" "$HOME/.bash_profile"; then
    # Add the path to .bash_profile and source the file
    echo "export PATH=\$PATH:${1}" >> "$HOME/.bash_profile"
    source "$HOME/.bash_profile"
    printGreen "Path '${1}' added to \$PATH and .bash_profile sourced."
  else
    # Notify if the path already exists
    printYellow "Path '${1}' already exists in \$PATH."
  fi
}

# Example usage of functions
# printLogo
# printLine
# printGreen "This is a green message."
# printRed "This is a red message."
# addToPath "/usr/local/bin"
