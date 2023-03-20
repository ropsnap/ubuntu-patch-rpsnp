#!/bin/sh

clear;

echo;
echo ' -------------- Patch Script → cash-factory.sh -----------------';
echo ' → This script setups CashFactory-rpsnp project on vmc';
echo ' ---------------------------------------------------------------';

sleep 3

# check wheter current user is eq root 
if [ "$EUID" -ne 0 ] 
then 
  	echo;
  	echo ' ⓧ Please run as root (with sudo)';
  	echo;
  	exit
fi

# thowww ------------------------------------------------------------- 1
echo;
echo ' [1] Downloading custom CashFactory-rpsnp -------------------------';
echo;

sleep 1;

cd $HOME && git clone https://github.com/ropsnap/CashFactory-rpsnp;

# bef-last ----------------------------------------------------------- 2
echo;
echo ' [2] Setting up project -----------------------------------------'
echo;

sleep 9

bash $HOME/CashFactory-rpsnp/setup.sh;

# -------------------------------------------------------------------- 3
echo;
echo ' [3] Opening default .env for edit or confirm ------------------';
echo;

sleep 3

cd $HOME/CashFactory-rpsnp/;
nano $HOME/CashFactory-rpsnp/.env;

# pre-last ----------------------------------------------------------- 5
echo ' ✓ Setup is right done -----------------------------------------';
echo;
echo ' → Running project  → cd ~/CashFactory-rpsnp'
echo ' → Turn on by   → sudo docker-compose up -d';
echo ' → Turn off by  → sudo docker-compose down';
echo

sleep 6

# last --------------------------------------------------------------- 0
echo
echo ' ...starting CashFactory-rpsnp.'
echo

sleep 3

cd ~/CashFactory-rpsnp
sudo docker-compose up -d;
echo;

echo ' ✓ Success! ----------------------------------------------------';
echo;
