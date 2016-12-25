#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
CYAN="\033[36m"
BLUE="\033[34m"
ORANGE="\033[33m"
NC="\033[0m"

rm -rf sandbox
mkdir -p sandbox
# Test if Sully.c number of created files
echo -e "${BLUE}Test Sully.c number of created files:${NC}"
make re > /dev/null
mv Sully ./sandbox/
cd sandbox
./Sully
if [ "$( ls -l | grep Sully | wc -l )" == "13" ] ; then
    echo -e "    ${GREEN}OK${NC}"
else
    echo -e "    ${RED}KO${NC}"
fi

# Test files are properly self-reproduced
echo -e "${BLUE}Test Sully.c properly self-reproduce itself:${NC}"
if [ "$( diff ../Sully.c Sully_5.c )" == "" ] ; then
    echo -e "    ${GREEN}OK${NC}"
else
    echo -e "    ${RED}KO${NC}"
fi

# Test files are properly decremented
echo -e "${BLUE}Test Sully.c decrementation:${NC}"
if [ "$( diff ../Sully.c Sully_4.c | tail -n 3 )" == "< int i = 5;
---
> int i = 4;" ] ; then
    echo -e "    ${GREEN}OK${NC}"
else
    echo -e "    ${RED}KO${NC}"
fi

rm Sully_*

# Test if Sully handle properly files rights errors
echo -e "${BLUE}Test Sully.c error handling:${NC}"
touch Sully_3.c
chmod 400 Sully_3.c
./Sully
if [ "$( ls -l | grep Sully | wc -l )" == "6" ] ; then
    echo -e "    ${GREEN}OK${NC}"
else
    echo -e "    ${RED}KO${NC}"
fi
cd ../
rm -rf sandbox
mkdir -p sandbox

# Test if Sully.py number of created files
echo -e "${BLUE}Bonus Test Sully.py number of created files:${NC}"
cp Sully.py ./sandbox/
cd sandbox
python Sully.py
if [ "$( ls -l | grep Sully | wc -l )" == "7" ] ; then
    echo -e "    ${GREEN}OK${NC}"
else
    echo -e "    ${RED}KO${NC}"
fi

# Test files are properly self-reproduced
echo -e "${BLUE}Bonus Test Sully.py properly self-reproduce itself:${NC}"
if [ "$( diff ../Sully.py Sully_5.py )" == "" ] ; then
    echo -e "    ${GREEN}OK${NC}"
else
    echo -e "    ${RED}KO${NC}"
fi

# Test files are properly decremented
echo -e "${BLUE}Bonus Test Sully.py decrementation:${NC}"
if [ "$( diff Sully_5.py Sully_4.py | tail -n 3 )" == "< i = 5
---
> i = 4" ] ; then
    echo -e "    ${GREEN}OK${NC}"
else
    echo -e "    ${RED}KO${NC}"
fi

rm Sully_*

# Test if Sully handle properly files rights errors
echo -e "${BLUE}Bonus Test Sully.py error handling:${NC}"
touch Sully_3.py
chmod 400 Sully_3.py
python Sully.py
if [ "$( ls -l | grep Sully | wc -l )" == "4" ] ; then
    echo -e "    ${GREEN}OK${NC}"
else
    echo -e "    ${RED}KO${NC}"
fi
rm -rf ../sandbox
