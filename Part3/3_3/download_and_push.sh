#!/bin/sh

echo "Give the url of the repository you'd like to download: "

read repository

git clone $repository

cd $( echo $repository | cut -d'/' -f 5 )

echo 'Give your docker hub username:'

read username

echo 'And password':

read -s password

docker login -u=$username -p=$password

echo 'And the repository name where you would like to push the project:'

read projectname

docker build -t $username/$projectname .

docker push $username/$projectname