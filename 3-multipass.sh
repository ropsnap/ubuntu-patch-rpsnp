#!/bin/bash

clear;

echo;
echo ' ------------------ Patch Script → main.sh -------------------';
echo ' → This script installs multipass and enable & start it ------';
echo ' -------------------------------------------------------------';
echo;

sleep 3

# ---------------------------------------------------------------- 1
echo;
echo ' [1] Updating and Upgrading packages ------------------------'
echo;
sudo apt install snap && snap install multipass;

# ---------------------------------------------------------------- 1
echo;
echo ' [2] Enabling and starting multipass service ----------------'
echo;

systemctl enable multipass;
systemctl start multipass;

sleep 1

echo
echo ' ✓ Success --------------------------------------------------'
echo
echo ' ⌛ Rebooting withing 9 seconds... or press CTL+C to skip.'
echo;

sleep 9

reboot;
