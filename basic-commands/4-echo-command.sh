#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}echo Command Options Overview:${NC}"
echo

echo -e "${GREEN}1. echo -n (Don't add a new line at the end)${NC}"
echo -n "This is printed without a new line"
echo " <- Next output starts here"
echo

echo -e "${GREEN}2. echo -e (Allow special characters like \\n for new lines)${NC}"
echo -e "Line 1\nLine 2 (printed on a new line)"
echo

echo -e "${GREEN}3. echo -E (Don't allow special characters - default behavior)${NC}"
echo -E "Line 1\nLine 2 (printed as a single line with \\n)"
echo
