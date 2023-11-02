#!/bin/bash

# askYN
# output the question received and check the answer
# param : question(y/n)
# returns : check result (y : 0 / n : 1)
function askYN() {
  while true; do
    echo -n "$* [y/n]: "
    read -r ANS
    case $ANS in
      [Yy]*)
        return 0
        ;;
      [Nn]*)
        return 1
        ;;
      *)
        echo "You must type 'y/Y' or 'n/N'."
        ;;
    esac
  done
}
