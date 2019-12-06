#/bin/bash
# Title: Args-Check.sh
# Author: mmartin@omhm.org 
# Desc: Checks args supplied in bash script 
# Usage: 
<<COMMENT
# Usage:
    > Args:
    > Functions:
    > Example:

COMMENT

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
fi