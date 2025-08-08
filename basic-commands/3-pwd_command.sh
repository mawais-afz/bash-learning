#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}pwd Command Options Overview:${NC}"
echo
echo -e "${GREEN}1. pwd (Default: Display the current working directory)${NC}"
pwd
echo

echo -e "${GREEN}2. pwd -L (Display the logical current working directory)${NC}"
pwd -L
echo

echo -e "${GREEN}3. pwd -P (Display the physical current working directory, without symbolic links)${NC}"
pwd -P
echo
