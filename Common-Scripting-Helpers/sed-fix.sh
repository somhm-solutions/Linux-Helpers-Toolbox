#!/bin/bash
FILE_TO_FIX=$1;

sed -i 's/\r//g' $FILE_TO_FIX;

