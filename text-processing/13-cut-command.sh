#!/bin/bash

echo "Demonstrating cut command options: -d (delimiter), -f (fields), --complement using @server.log"

# 1. Show contents of server.log
echo
echo "Contents of server.log:"
cat server.log | head -5

# 2. cut -d: Use a custom delimiter (space) and -f: select fields
echo
echo "Using cut -d ' ' -f1,2,3 server.log (show date, time, and log level):"
cut -d' ' -f1,3,4 server.log | head -100

# 3. cut -d: Use a custom delimiter (space) and -f: select only the log message (fields 4 and beyond)
echo
echo "Using cut -d ' ' -f4- server.log (show the log message only):"
cut -d' ' -f4- server.log | head -5

# 4. cut with a different delimiter (colon) - for demonstration, let's create a sample line
echo
echo "Using cut -d ':' -f2 on a sample colon-delimited line:"
echo "user:john:admin:2024" | cut -d':' -f2
