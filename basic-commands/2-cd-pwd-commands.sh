#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Demonstrating cd command options:${NC}"

# Move up one directory level
echo -e "${GREEN}1. cd .. (Move up one directory level)${NC}"
pwd
cd ..
pwd
echo

# Change to the home directory
echo -e "${GREEN}2. cd ~ (Change to the home directory)${NC}"
cd ~
pwd
echo

# Switch to the previous directory
echo -e "${GREEN}3. cd - (Switch to the previous directory)${NC}"
cd -
pwd
echo

# Change to the root directory
echo -e "${GREEN}4. cd / (Change to the root directory)${NC}"
cd /
pwd
echo

# pwd command options
echo -e "${GREEN}5. pwd -L (Display the logical current working directory)${NC}"
cd -
pwd -L
echo

echo -e "${GREEN}6. pwd -P (Display the physical current working directory, without symbolic links)${NC}"
pwd -P
echo


