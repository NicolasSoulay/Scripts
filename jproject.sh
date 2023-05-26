#!/usr/bin/bash

if [ -z $1 ]; then
  echo "Usage: jproject NameOfProject"
  echo "     Name of project as argument is required."
  echo "     Exiting"
  exit 0
fi

TITLE=$1

mkdir $1 
cd $1

mkdir ./out
mkdir ./src
touch README.md
echo "#${TITLE}#" >> README.md 
touch ./src/Main.java
echo "public class Main {" >> ./src/Main.java
echo "  public static void main(String[] args) {" >> ./src/Main.java
echo "  }" >> ./src/Main.java
echo "}" >> ./src/Main.java
touch .gitignore
echo "*.class" >> .gitignore
echo "/.settings" >> .gitignore
echo ".classpath" >> .gitignore
echo ".project" >> .gitignore
echo "out/" >> .gitignore
echo "!**/src/main/**/out/" >> .gitignore
echo "!**/src/test/**/out/" >> .gitignore
