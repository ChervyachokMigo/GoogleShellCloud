#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt install -y automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev make g++ git curl
sudo rm -rf cpuminer-opt
git clone https://github.com/JayDDee/cpuminer-opt
cd cpuminer-opt
sudo ./build.sh
cd ..
clear
