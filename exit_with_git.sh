#!/bin/bash

# ToDo: make reaction when git_push_each_gdir.rb failed
git_push_each_gdir.rb

echo "exit?(yes = 0): "; read ans
if test ${ans} -eq 0
then
  echo "good-bye"
  \exit
else
  echo "donot exit"
fi



