#!/bin/bash

echo "length of the password"

read length

if ! [[ $length =~ ^[0-9]+$ ]]; then #remember bash is sensitive to spacing
    echo "Error: Please enter a valid number."
    exit 1
fi

password=()


for p in $(seq 1 3);
    do
        password+=("$(openssl rand -base64 48 | cut -c1-$length)")
    done

echo "Here are the generated passwords:"
printf "%s\n" "${password[@]}"


echo "want to save?y/n"
read choice

if [ "${choice}" = "y" ]; then
    for w in "${password[@]}"; do
        echo "$w" | ccrypt -e -K "$PASSPHRASE" > "passwords.txt.cpt"
        done
elif [ "$choice" = "n" ]; then
     echo "Passwords not saved."
fi




