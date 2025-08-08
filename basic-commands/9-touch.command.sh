#!/bin/bash

echo "Demonstrating touch command options: -a (access time), -m (modification time), -t (set timestamp), -c (no create)"

# 1. Setup: Remove any old demo files
rm -f touch_demo.txt

# 2. Create a new file
echo
echo "Creating a new file with touch:"
touch touch_demo.txt
ls -l touch_demo.txt

# 3. touch -a: Update only the access time
echo
echo "Using touch -a (update only access time):"
sleep 2
touch -a touch_demo.txt
ls -l --time=atime touch_demo.txt

# 4. touch -m: Update only the modification time
echo
echo "Using touch -m (update only modification time):"
sleep 2
touch -m touch_demo.txt
ls -l --time=mtime touch_demo.txt

# 5. touch -t: Set the timestamp to a specific time (YYYYMMDDhhmm)
echo
echo "Using touch -t (set timestamp to 202201010101):"
touch -t 202201010101 touch_demo.txt
ls -l touch_demo.txt

# 6. touch -c: Do not create the file if it does not exist
echo
echo "Using touch -c (no create) on a non-existent file:"
rm -f nofile.txt
touch -c nofile.txt
if [ -e nofile.txt ]; then
    echo "nofile.txt was created"
else
    echo "nofile.txt was NOT created"
fi

# 7. Cleanup
rm -f touch_demo.txt
