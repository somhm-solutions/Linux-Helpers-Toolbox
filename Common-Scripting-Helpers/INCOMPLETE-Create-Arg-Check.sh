
#/bin/bash

# TODO: FINISH ARG CHECKING
    # 1) ADD LOOP THROUGH ARRAY OF EXPECTED ARGS 
    # 2) ADD PRINT FORMATTIN

# Title: Create-Arg-Check.sh
# Author: mmartin@omhm.org 
# Desc: Create an Arg Check for use in a bash script
<<COMMENT
#Usage:
    > Args: 
        - 
> Functions:
> Example:
COMMENT


if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
fi