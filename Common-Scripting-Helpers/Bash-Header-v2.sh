#/bin/bash
# Title: Bash-Header.sh
# Author: mmartin@omhm.org 
# Desc: Download gpg key and verify file  
<<COMMENT
# Usage:
    > Args:
        - TITLE(1): Title of doc
        - AUTHOR(2): Author of doc
        - OUTPUT_PATH: Output path
    > Functions:
    > Example:

COMMENT

TITLE=$1;
AUTHOR=$2;
OUTPUT_PATH=$3;

TAB="";

printf "Now creating file...\nTitle: $TITLE\nAuthor: $AUTHOR\nOutput Path: $OUTPUT_PATH";
printf "\n#/bin/bash\n# Title: $TITLE\n# Author: $AUTHOR \n# Desc: \n# Usage: " > $OUTPUT_PATH;
printf "\n<<COMMENT" >> $OUTPUT_PATH;
printf ""$TAB"> Usage:> Args:$TAB> Functions:$TAB> Example:\nCOMMENT" >> $OUTPUT_PATH;


