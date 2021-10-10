#!/usr/bin/bash
unset KEYMASTER;
echo "keygen.sha1";
echo "Intruduzca la clave: ";
read KEYMASTER
KEYCONVERT=`echo -n "${KEYMASTER}" |
openssl sha1 -binary | base64`;
printf "%b" "\nLlave base64:\n${KEYCONVERT}\n\nCopiando portapapeles...!\n\a"
echo -n "${KEYCONVERT}" | tr -d [:cntrl:] |
termux-clipboard-set;
