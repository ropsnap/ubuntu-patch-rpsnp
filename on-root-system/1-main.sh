#!/bin/bash

clear;

echo;
echo ' ------------------ Patch Script → main.sh -------------------';
echo ' → This script makes setup Ubuntu major settings';
echo ' -------------------------------------------------------------';
echo;

sleep 3

# ---------------------------------------------------------------- 1
echo ' [1] Updating and Upgrading packages ------------------------'
echo;

sleep 1

# update
sudo apt-get update && apt-get upgrade -y;
sudo apt update && apt upgrade -y;

# ---------------------------------------------------------------- 5
echo
echo ' [5] Installing essential packages --------------------------'
echo;
echo '  → Packages → git, sudo, curl';
echo;

sleep 1

# install
sudo apt install sudo git curl && sleep 1;

echo
echo ' ✓ Success --------------------------------------------------'
echo
echo ' ⌛ Rebooting withing 9 seconds... '
echo;

sleep 9

reboot;
