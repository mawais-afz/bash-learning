#!/bin/bash

echo "Demonstrating sed command options: -i (in-place), -e (script), -n (suppress output), -r (extended regex), -f (script file), -l (line length for l command) using @server.log"

# 1. Show contents of server.log
echo
echo "Contents of server.log:"
cat server.log

# 2. sed -i: Edit file in place (replace 'INFO' with 'INFORMATION' in a copy)
echo
echo "Using sed -i to replace 'INFO' with 'INFORMATION' in a copy of server.log:"
cp server.log server.log.sedtmp
# Use portable in-place editing for sed (works on both GNU and BSD/macOS)
# BSD/macOS sed requires a backup extension (even if empty)
sed -i '' 's/INFO/INFORMATION/g' server.log.sedtmp
head -5 server.log.sedtmp
rm server.log.sedtmp

# 3. sed -e: Add the script to the commands to be executed (show lines with 'ERROR' and add a marker)
echo
echo "Using sed -e to add a script: prefix lines containing 'ERROR' with '!!!':"
sed -e '/ERROR/s/^/!!! /' server.log | head -5
sed -n '/ERROR/p' server.log | head -3

# 4. sed -n: Suppress automatic printing (print only lines containing 'WARN')"
echo
echo "Using sed -n to print only lines containing 'WARN':"
sed -n '/WARN/p' server.log | head -3

# 5. sed -r: Use extended regular expressions (match lines with 'User <name> logged in')"
echo
echo "Using sed -r to use extended regex and extract usernames who logged in:"
sed -rn 's/.*User ([a-zA-Z0-9_]+) logged in.*/\1/p' server.log | head -3

# 6. sed -f: Use a script from a file (replace 'Server' with 'SERVER' and 'User' with 'USER')"
echo
echo "Using sed -f to run commands from a file:"
echo 's/Server/SERVER/g' > sed_script.sed
echo 's/User/USER/g' >> sed_script.sed
sed -f sed_script.sed server.log | head -5
rm sed_script.sed

# 7. sed -l: Specify line length for the l command (show first line with visible non-printing characters, line length 40)"
echo
echo "Using sed -n to show the first line with non-printing characters visible and line length 40 (portable version):"
# The -l option is not portable across all sed versions (BSD/macOS vs GNU).
# Instead, use the 'l' command with a specified length if supported, else fallback to default.
# Try GNU sed syntax first, fallback to BSD/macOS if needed.
if sed --version >/dev/null 2>&1; then
  # GNU sed: -l40 is supported
  sed -n -l40 '1l' server.log
else
  # BSD/macOS sed: -l40 is not supported, use '1l' (default 72 chars per line)
  sed -n '1l' server.log
fi
