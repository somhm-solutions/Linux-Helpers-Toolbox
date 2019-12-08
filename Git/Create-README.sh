
#/bin/bash
# Title: Create-README.sh
# Author: mmartin@omhm.org 
# Desc: Creates README.md Template
<<COMMENT
    > Usage: 
    > Args:
        1) Repo Name
    > Functions:
    > Example:
COMMENT

# Arguements
REPO_NAME=$1;
REPO_PATH=$2;
#PATH_PREFIX=
FILE_NAME="README";
FILETYPE=".md";

# Build Template
function create_readme(){
    printf "# **$REPO_NAME**" >> "$FILE_NAME"$FILETYPE;
    printf "\n\n## Contents:" >>  "$FILE_NAME"$FILETYPE; 
    printf "\n\n### **Description**:" >> "$FILE_NAME"$FILETYPE;
    printf "\n\t* *Purpose*:" >> "$FILE_NAME"$FILETYPE;
    printf "\n\t* *Dependencies*:" >> "$FILE_NAME"$FILETYPE;
    printf "\n\t* *Usage*:" >> "$FILE_NAME"$FILETYPE;
    printf "\n\t* *Examples*:" >> "$FILE_NAME"$FILETYPE;

    printf "\n\n## *Testing*" >> "$FILE_NAME"$FILETYPE; 
    printf "\n### *Test Input*" >> "$FILE_NAME"$FILETYPE; 
    printf "\n\t* *Parameters*:" >> "$FILE_NAME"$FILETYPE;
    printf "\n\t* *Actions*:" >> "$FILE_NAME"$FILETYPE;

    printf "\n\n### Test Output" >> "$FILE_NAME"$FILETYPE;
    printf "\n\t* *Output*:" >> "$FILE_NAME"$FILETYPE;
    printf "\n\t* *Screenshots*:" >> "$FILE_NAME"$FILETYPE;
    printf "\n\t* *Video*:" >> "$FILE_NAME"$FILETYPE;
    printf "\n\t* *Etc*:" >> "$FILE_NAME"$FILETYPE;

    printf "\n\n## Notes:" >> "$FILE_NAME"$FILETYPE;
    printf "* *[option]*: " >> "$FILE_NAME"$FILETYPE;
    
}

create_readme;
mv  "$FILE_NAME"$FILETYPE $REPO_PATH;