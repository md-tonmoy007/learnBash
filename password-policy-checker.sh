#!/bin/bash


if [ "$(id -u)" -ne 0 ]; then
    echo "must be root"
    exit 1
fi


echo "password policy"
echo "================================================================"
grep -E "PASS_MAX_DAYS|PASS_MIN_DAYS|PASS_MIN_LEN|PASS_WARN_AGE" /etc/login.defs

echo "Password Complexity Settings:"
echo "------------------"
grep -E "minlen|minclass" /etc/security/pwquality.conf
