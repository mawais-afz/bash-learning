#!/bin/bash

echo "Demonstrating awk command options: -F (field separator), -v (variable), -f (program file) using @server.log"

# 1. Show contents of server.log
echo
echo "Contents of server.log:"
cat server.log

# 2. awk -F: Set the field separator (e.g., split on space)
echo
echo "Using awk -F' ' '{print \$1, \$3}' server.log (print date and log level):"
awk -F' ' '{print $1, $3, $4}' server.log

# 3. awk -F: Use a custom separator (e.g., split on colon)
echo
echo "Using awk -F':' '{print \$1, \$2}' server.log (print date and hour):"
awk -F':' '{print $1, $2}' server.log

# 4. awk -v: Pass a shell variable into awk
echo
echo "Using awk -v level=\"ERROR\" '\$3==level {print \$0}' server.log (print only ERROR lines):"
awk -v level="ERROR" '$3==level {print $0}' server.log

# 5. awk -f: Use an awk program from a file
echo
echo "Creating awk program file 'print_warn.awk' to print only WARN lines:"
cat << 'EOF' > print_warn.awk
$3 == "WARN" { print $0 }
EOF

echo "Using awk -f print_warn.awk server.log:"
awk -f print_warn.awk server.log

# 6. Cleanup
rm -f print_warn.awk
