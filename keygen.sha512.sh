#!/usr/bin/bash
unset KEYMASTER;
echo "keygen.sha512";
echo "Intruduzca la clave: ";
read KEYMASTER
KEYCONVERT=`echo -n "${KEYMASTER}" | 
base64 | openssl sha512`;
printf "%b" "\nLlave sha512:\n${KEYCONVERT/* }\n\nCopiando portapapeles...!\n\a"
echo -n "${KEYCONVERT/* }" | tr -d [:cntrl:] |
termux-clipboard-set;
