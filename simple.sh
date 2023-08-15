#!/bin/bash
touch f1
git add f1
git commit -m "a"

touch f2
git add f2
git commit -m "b"

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

git checkout master
git log --oneline
touch f3
git add f3
git commit -m "f"

git merge Test
git log --oneline
test
