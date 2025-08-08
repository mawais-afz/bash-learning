#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}cat Command Options Overview:${NC}"
echo

echo -e "${GREEN}1. cat -n (Add numbers to each line)${NC}"
cat -n 4-echo-command.sh
echo

echo -e "${GREEN}2. cat -b (Add numbers only to lines with text)${NC}"
cat -b 3-pwd_command.sh
echo

echo -e "${GREEN}3. cat -s (Remove extra empty lines)${NC}"
cat -s 4-echo-command.sh
echo

echo -e "${GREEN}4. cat -v (Show non-printing characters except tabs and end of line)${NC}"
cat -v 3-pwd_command.sh
echo
