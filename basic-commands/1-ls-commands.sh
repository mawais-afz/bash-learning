#!/bin/bash

echo -e "\033[0;32m1 - Long listing format (-l)\033[0m"
ls -l

echo -e "\033[0;32m2 - Include hidden files (-a)\033[0m"
ls -a

echo -e "\033[0;32m3 - Human-readable sizes (-lh)\033[0m"
ls -lh

echo -e "\033[0;32m4 - Sort by modification time (-lt)\033[0m"
ls -lt

echo -e "\033[0;32m5 - Reverse order while sorting (-lr)\033[0m"
ls -lr

echo -e "\033[0;32m6 - List subdirectories recursively (-R)\033[0m"
ls -R

echo -e "\033[0;32m7 - Sort by file size (-lS)\033[0m"
ls -lS

echo -e "\033[0;32m8 - List one file per line (-1)\033[0m"
ls -1

echo -e "\033[0;32m9 - List directories themselves, not their contents (-d)\033[0m"
ls -ld */

echo -e "\033[0;32m10 - Append indicator to entries (-F)\033[0m"
ls -F

echo -e "\033[0;32m11 - Lists files and directories in long format, sorted by modification time, with the oldest first (-ltr)\033[0m"
ls -ltr