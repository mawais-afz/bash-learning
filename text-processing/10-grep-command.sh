#!/bin/bash

echo "Demonstrating grep command options: -i (ignore case), -r (recursive), -v (invert match) using @server.log"

# 1. Show contents of server.log
echo
echo "Contents of server.log:"
cat server.log

# 2. grep -i: Ignore case when searching for 'error'
echo
echo "Using grep -i 'error' server.log (ignore case):"
grep -i "error" server.log

# 3. grep -r: Search recursively for 'connection' in current directory (including server.log)
echo
echo "Using grep -r 'connection' . (recursive):"
grep -r "connection" .

# 4. grep -v: Show lines that do NOT contain 'INFO' in server.log
echo
echo "Using grep -v 'INFO' server.log (invert match):"
grep -v "INFO" server.log

# 5. Combine options: grep -iv 'warn' server.log (ignore case, invert match)
echo
echo "Using grep -iv 'warn' server.log (ignore case, invert match):"
grep -iv "warn" server.log

echo
echo "Can you use grep -iv 'warn|info' server.log to filter out both 'warn' and 'info'?"
echo "Let's try it:"
grep -iv "warn|info" server.log

echo
echo "Note: By default, grep treats the pattern as a basic regular expression, so 'warn|info' will match the literal string 'warn|info', not 'warn' OR 'info'."
echo "To match either 'warn' or 'info', use the -E option (extended regex) or egrep:"
echo "Using grep -E -iv 'warn|info' server.log:"
grep -E -iv "warn|info" server.log # 

echo
echo "Or equivalently, using egrep (which is the same as grep -E):"
egrep -iv "warn|info" server.log

