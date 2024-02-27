#!/bin/bash

echo "Enter length of password"

read password_length

password=$(openssl rand -base64 48 | tr -d '/+' | head -c "$password_length")

echo "Your password is: $password"
