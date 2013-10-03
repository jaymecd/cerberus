#!/bin/bash

# gpg commands
#=============

# generate keys
#==============
gpg --gen-key

# list keys
#==========
gpg --list-keys

# create revoke certificatre
#===========================
gpg --output revoke.asc --gen-revoke 12345678

# encrypt file
#=============
gpg -esr "Daniel J Wilcox" --armor unencrypted.txt

# decrypt file
#=============
gpg -d unencrypted.txt.asc | tee > decrypted.txt

# export public key
#==================

gpg --list-keys

# replace KEY-ID with your key from the list keys command
gpg --export -a KEY-ID > mykey.asc


# import public key
#==================
gpg --import publickey.asc


# trust the public key
#=====================
gpg --edit-key username@gmail.com

# sign the key
sign
check
yes
save
