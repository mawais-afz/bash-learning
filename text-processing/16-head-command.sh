#!/bin/bash

echo "Demonstrating head command options: -n (lines), -c (bytes) using @server.log"

# 1. Show the first 10 lines of server.log (default)
echo
echo "head server.log (first 10 lines by default):"
head server.log

# 2. head -n: Show the first 5 lines
echo
echo "head -n 5 server.log (first 5 lines):"
head -n 5 server.log

# 3. head -c: Show the first 100 bytes
echo
echo "head -c 100 server.log (first 100 bytes):"
head -c 100 server.log

# 4. head -n and -c combined: Show the first 3 lines, but only up to 50 bytes
echo
echo "head -n 3 server.log | head -c 50 (first 3 lines, up to 50 bytes):"
head -n 3 server.log | head -c 50
