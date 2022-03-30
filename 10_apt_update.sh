#!/usr/bin/env bash
ok="\033[32;1m[OK]\033[m"
error="\033[31;1m[Error]\033[m"

# Checks #######################################################
# Verify Root ##################################################
if ! [[ "$UID" -eq "0" ]]; then
  { echo -e "$error Permission denied, are you root?"; exit 1 ;}
fi

# Verify Internet
if ! wget -q --spider www.google.com; then
  { echo -e "$error No internet connection"; exit 1 ;}
fi

# Core #########################################################
# Update #######################################################
if apt update; then
  echo -e "$ok Updated Packages"
else
  { echo -e "$error Update Error"; exit 1 ;}
fi
echo

# List #######################################################
if apt list --upgradable -a; then
  echo -e "$ok Listing Packages"
else
  { echo -e "$error Listing Error"; exit 1 ;}
fi
echo

# Upgrade ######################################################
if apt upgrade -y; then
  echo -e "$ok Upgraded Packages"
else
  { echo -e "$error Upgrade Error "; exit 1 ;}
fi
echo

# Clean ########################################################
if apt clean; then  # /var/cache/apt/archives
  echo -e "$ok Cleaning Packages"
else
  { echo -e "$error Cleaning Error"; exit 1 ;}
fi