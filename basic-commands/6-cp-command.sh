
#!/bin/bash

# 1. Check manual for mkdir (just a note here, can't automate "man" in script)
echo "Tip: You can check mkdir manual by running: man mkdir"

# 2. Create project folder
mkdir my_project

# 3. Change into the project directory
cd my_project || exit

# 4. Show current directory
pwd

# 5. Create files with timestamps
touch notes.txt todo.txt

# 6. List files
ls

# 7. Write text to notes.txt
echo "This is my project notes file." > notes.txt
echo "More notes coming soon." >> notes.txt

# 8. View file contents
cat notes.txt

# 9. Create backup folder
mkdir backup

# 10. Copy notes.txt to backup using cp options
# -v : verbose
# -i : interactive (ask before overwrite)
# Note: The '-u' option is not supported on macOS's default cp (BSD cp), so it is omitted for compatibility.
cp -v -i notes.txt backup/

# 11. Create a folder with subfiles to test -r option
mkdir tasks
echo "My tasks for today" > tasks/todo.txt

# 12. Copy tasks folder to backup using -r
cp -v -r tasks backup/

# 13. List contents of backup
ls backup
ls backup/tasks

# 14. Remove a file
rm backup/notes.txt

# 15. Go back and remove everything
cd ..
rm -r my_project