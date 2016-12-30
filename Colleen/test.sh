#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
CYAN="\033[36m"
BLUE="\033[34m"
ORANGE="\033[33m"
NC="\033[0m"

echo -e "${BLUE}Test Collen.c behavior:${NC}"
make re > /dev/null
./Colleen > tmp_Colleen
if [ "$( diff tmp_Colleen Colleen.c )" == "" ] ; then
    echo -e "    ${GREEN}OK${NC}"
else
    echo -e "    ${RED}KO${NC}"
fi
make fclean > /dev/null
rm tmp_Colleen


echo -e "${BLUE}Test Bonus Collen.py behavior:${NC}"
python Colleen.py > tmp_Colleen2
if [ "$( diff tmp_Colleen2 Colleen.py )" == "" ] ; then
    echo -e "    ${GREEN}OK${NC}"
else
    echo -e "    ${RED}KO${NC}"
fi
rm tmp_Colleen2