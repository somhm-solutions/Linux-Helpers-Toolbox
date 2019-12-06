
#/bin/bash
# Title: Init-Repo.sh
# Author: mmartin@omhm.org 
# Desc:
<<COMMENT
    > Usage: Run from Repo's Root dir
    > Args:
        - REPO_NAME
        - REPO_PATH
    > Functions:
    > Example:
COMMENT

# Arguement Variable Assignment
REPO_NAME=$1
REPO_PATH=$2

echo "# $REPO_NAME" >> README.md;

git init;
git add README.md;
git commit -m "First commit";
git remote add origin $REPO_PATH;
git push -u origin master;