#!/bin/sh
echo "keygen.md5";
echo "Intruduzca la clave: ";
read KEYMASTER
KEYCONVERT=`echo -n "${KEYMASTER}" |
openssl md5 -binary | base64`;
printf "%b" "\nLlave base64:\n${KEYCONVERT}\n\nCopiando portapapeles...!\n\a"
echo -n "${KEYCONVERT}" | tr -d [:cntrl:] |
termux-clipboard-set;
