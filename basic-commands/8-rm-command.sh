#!/bin/bash

echo "Demonstrating rm command options: -r (recursive), -i (interactive), -f (force), -v (verbose)"

# 1. Setup: Create a test directory and files
mkdir rm_demo
cd rm_demo || exit

echo "File 1" > file1.txt
echo "File 2" > file2.txt
mkdir subdir
echo "Subdir file" > subdir/file3.txt

echo
echo "Initial files and folders:"
ls -l
echo "Contents of subdir:"
ls -l subdir

# 2. rm -i: Ask before deleting each file
echo
echo "Using rm -i (interactive):"
cp file1.txt file1_copy.txt
rm -i file1_copy.txt

# 3. rm -r: Delete a directory and everything inside it
echo
echo "Using rm -r (recursive):"
cp -r subdir subdir_copy
rm -r subdir_copy

# 4. rm -f: Force delete without asking
echo
echo "Using rm -f (force):"
cp file2.txt file2_copy.txt
rm -f file2_copy.txt

# 5. rm -v: Verbose output
echo
echo "Using rm -v (verbose):"
cp file1.txt file1_verbose.txt
rm -v file1_verbose.txt

# 6. Combine options: rm -rfv
echo
echo "Using rm -rfv (recursive, force, verbose):"
cp -r subdir subdir_verbose
rm -rfv subdir_verbose

# 7. Cleanup
cd ..
rm -r rm_demo
