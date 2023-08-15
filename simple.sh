#!/bin/bash

#The below f1,f2 are created in master branch

touch f1
git add f1
git commit -m "a"

touch f2
git add f2
git commit -m "b"

#Here we are creating a new branch name called Test and staged t1,t2,t3 file and committed
git checkout -b Test
touch t1
git add t1
git commit -m "c"

touch t2
git add t2
git commit -m "d"

touch t3
git add t3
git commit -m "e"

#Here we are again checking out to the master branch and created a file called f3 and staged and then commited
git checkout master
git log --oneline
touch f3
git add f3
git commit -m "f"

#Here we are using a concept called Merge<we need to checkout to Master branch and then do merge of the child branch
git merge Test
git log --oneline

