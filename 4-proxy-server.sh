#!/bin/sh

clear;

echo;
echo ' ------------- Patch Script → proxy-server.sh -----------------';
echo ' → This script installs and setup auto-start of a Proxy Server';
echo ' --------------------------------------------------------------';
echo;

sleep 3

# ------------------------------------------------------------------ 1

echo ' [1] Fetching ~/tinyproxy.conf file ---------------------------'
echo;

sleep 3

cd ~/ && sleep 3 && wget https://raw.githubusercontent.com/ropsnap/ubuntu-patch/main/tinyproxy.conf;
echo;

# ------------------------------------------------------------------ 2

echo ' [2] Installing Tinyproxy -------------------------------------'
echo;

sleep 3

sudo apt install tinyproxy;

echo;
echo ' ✓ tinyproxy successfully installed.'
echo;

# ------------------------------------------------------------------ 5

echo ' [3] Starting Proxy Server first time -------------------------'
echo;
echo ' ...or type CRTL + C for skip.'
echo;

sleep 9

# main command
tinyproxy -c ~/tinyproxy.conf;

## from now on tinyproxy daemon will auto-start and maintains
## without need to confgure native services (systemctl, service, etc)
# ------------------------------------------------------------------ 0
echo;
echo ' ✓ Sucessfully started tinyproxy ------------------------------'
echo

sleep 3

exit;
