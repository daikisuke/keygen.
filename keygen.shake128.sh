#!/usr/bin/bash
echo "keygen.shake128";
echo "Intruduzca la clave: ";
read KEYMASTER
KEYCONVERT=`echo -n "${KEYMASTER}" |
openssl shake128 -binary | base64`;
printf "%b" "\nLlave base64:\n${KEYCONVERT}\n\nCopiando portapapeles...!\n\a"
echo -n "${KEYCONVERT}" | tr -d [:cntrl:] |
termux-clipboard-set;
