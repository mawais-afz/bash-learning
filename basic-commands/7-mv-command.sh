#!/bin/bash

echo "Demonstrating mv command options: -i (interactive), -u (update), -v (verbose)"

# 1. Setup: Create a test directory and files
mkdir mv_demo
cd mv_demo || exit

echo "Original content" > file1.txt
sleep 1
echo "Old content" > file2.txt

# Wait a second to ensure a different timestamp
sleep 1
echo "New content" > file1.txt

# 2. Show initial files
echo "Initial files:"
ls -l

# 3. Use mv -i: Ask before overwriting file2.txt with file1.txt
echo
echo "Using mv -i (interactive):"
cp file2.txt file2_backup.txt
mv -i file1.txt file2.txt

# 4. Restore file1.txt for next demo
mv file2.txt file1.txt

# 5. Use mv -u: Only move if source is newer than destination
echo
echo "Using mv -u (update):"
mv -u file1.txt file2.txt

# 6. Restore files for next demo
cp file2_backup.txt file2.txt
cp file1.txt file1.txt

# 7. Use mv -v: Verbose output
echo
echo "Using mv -v (verbose):"
mv -v file1.txt file2.txt

# 8. Cleanup
cd ..
rm -r mv_demo
