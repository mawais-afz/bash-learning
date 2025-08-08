#!/bin/bash

echo "Demonstrating sort command options: -r (reverse), -n (numeric), -k (key/column), -u (unique), -t (delimiter) using @server.log"

# 1. Show first 5 lines of server.log
echo
echo "Contents of server.log (first 5 lines):"
head -5 server.log

# 2. sort -r: Sort lines in reverse order
echo
echo "Using sort -r server.log (reverse order, first 5 lines):"
sort -r server.log | head -5

# 3. sort -n: Sort lines numerically (by default, sorts by the leading number if present)
echo
echo "Using sort -n server.log (numeric sort, first 5 lines):"
sort -n server.log | head -5

# 4. sort -k: Sort by a specific column (e.g., by log level, which is the 3rd column)
echo
echo "Using sort -k3,3 server.log (sort by log level, first 10 lines):"
sort -k3,3 server.log | head -100

# 4a. sort -k: Sort by date (1st column) and time (2nd column)
echo
echo "Using sort -k1,1 -k2,2 server.log (sort by date and time, first 10 lines):"
sort -k1,1 -k2,2 server.log | head -10

# 4b. sort -k: Sort by the username (if present, e.g., 6th column for 'User <name> ...')
echo
echo "Using sort -k6,6 server.log (sort by username, first 10 lines):"
sort -k6,6 server.log | head -10

# 4c. sort -k: Sort by IP address (e.g., 8th column for 'from <ip>' lines)
echo
echo "Using sort -k8,8 server.log (sort by IP address, first 10 lines):"
sort -k8,8 server.log | head -10

# 4d. sort -k: Sort by the service name in square brackets (e.g., 5th column for '[Service]')
echo
echo "Using sort -k5,5 server.log (sort by service name, first 10 lines):"
sort -k5,5 server.log | head -10

# 5. sort -u: Remove duplicate lines (show unique lines only)"
echo
echo "Using sort -u server.log (unique lines, first 10 lines):"
sort -u server.log | head -10

# 6. sort -t: Specify a delimiter (e.g., sort by the 4th field using space as delimiter)"
echo
echo "Using sort -t' ' -k4,4 server.log (sort by 4th field, first 10 lines):"
sort -t' ' -k4,4 server.log | head -10

# 7. Combine options: sort by log level (3rd column), reverse order, unique lines
echo
echo "Using sort -k3,3 -r -u server.log (sort by log level, reverse, unique, first 10 lines):"
sort -k3,3 -r -u server.log | head -10
