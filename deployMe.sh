#!/bin/bash
# automatic deploy system for lazy ppl

echo ".---------------------------------."
echo "|  .---------------------------.  | "
echo "|[]|                           |[]|"
echo "|  |                           |  |"
echo "|  |       automatic           |  |"
echo "|  |            deploy         |  |"
echo "|  |                system     |  |"
echo "|  |                           |  |"
echo "|  |        for lazy ppl       |  |"
echo "|  |                           |  |"
echo "|  |                           |  |"
echo "|  '---------------------------'  |"
echo "|      __________________ _____   |"
echo "|     |   ___            |     |  |"
echo "|     |  |   |           |     |  |"
echo "|     |  |   |           |     |  |"
echo "|     |  |   |           |     |  |"
echo "|     |  |___|           |     |  |"
echo "\_____|__________________|_____|__|"



echo
echo "//////////"
echo "// initializing deployment of $1"
echo "// ...this might get ugly..."
echo "//////////"
echo

cd ~
#mkdir $1
cd $1

echo
echo "//////////"
echo "// removing old version of $1 and"
echo "// creating a nesting ground for the new pull"
echo "//////////"
echo

rm -rf bundle
rm -rf source
mkdir source
cd source

git init
git pull https://github.com/symatix/cro

echo
echo "//////////"
echo "// preparing $1 for node build"
echo "// installing dependencies"
echo "//////////"
echo

meteor npm install
meteor npm install babel-runtime

echo
echo "//////////"
echo "// beginning to give birth to node"
echo "//////////"
echo

demeteorizer -o ~/$1
cd ~/$1/bundle/programs/server

echo
echo "//////////"
echo "// installing dependencises for $1"
echo "//////////"
pwd
echo

npm install
npm install babel-runtime
npm install bcrypt
cd ~

echo
echo "//////////"
echo "// everything went better than expected"
echo "// have a good day! :)"
echo "//////////"
echo
