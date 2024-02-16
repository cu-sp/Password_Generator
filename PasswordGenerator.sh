#!/bin/bash
#Password Generator
#
#Dylan Dodds
#Feb. 16 2024
#

echo "This is a simple password generator"
echo "Enter desired length of password: "
read PASS_LENGTH
echo "Number of passwords: "
read PASS_NUMBER

for p in $(seq 1 $PASS_NUMBER); do
	openssl rand -base64 48 | cut -c1-$PASS_LENGTH
done
