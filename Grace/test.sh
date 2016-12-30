#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
CYAN="\033[36m"
BLUE="\033[34m"
ORANGE="\033[33m"
NC="\033[0m"

# Test if Grace_kid.c is self-reproduction of Grace.c
echo -e "${BLUE}Test Grace.c behavior:${NC}"
make re > /dev/null
./Grace
if [ "$( diff Grace.c Grace_kid.c )" == "" ] ; then
    echo -e "    ${GREEN}OK${NC}"
else
    echo -e "    ${RED}KO${NC}"
fi

# Test if the program didn't segfault if Grace_kid.c opening fail
echo -e "${BLUE}Test Grace.c behavior with unauthorized file:${NC}"
chmod 400 Grace_kid.c
./Grace
echo -e "    ${GREEN}OK${NC}"
make fclean > /dev/null

# Test if Grace_kid.py is self-reproduction of Grace.py
echo -e "${BLUE}Test Bonus Grace.py behavior:${NC}"
python Grace.py
if [ "$( diff Grace.py Grace_kid.py )" == "" ] ; then
    echo -e "    ${GREEN}OK${NC}"
else
    echo -e "    ${RED}KO${NC}"
fi

rm -rf Grace_kid*
