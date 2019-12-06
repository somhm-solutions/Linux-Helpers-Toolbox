#/bin/bash
# Title: Gpg-Verify.sh
# Author: mmartin@omhm.org 
# Desc: Download gpg key and verify file 
# Usage: 
<<COMMENT
    > Run as sudo
    > 3 Args: Path to key, sig and file
COMMENT

# Arguements
KEY=$1
SIG=$2
FILE=$3

# Download Key, Sig and File
wget $KEY;
gpg --import $KEY;
wget $FILE;

# Verify using sig
gpg --verify $SIG $FILE;