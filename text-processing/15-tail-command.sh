#!/bin/bash

echo "Demonstrating tail command options: -n (lines), -f (follow), -c (bytes), --pid, --retry using @server.log"

# 1. Show the last 10 lines of server.log (default)
echo
echo "tail server.log (last 10 lines by default):"
tail server.log

# 2. tail -n: Show the last 5 lines
echo
echo "tail -n 5 server.log (last 5 lines):"
tail -n 5 server.log