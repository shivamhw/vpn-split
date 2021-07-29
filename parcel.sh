#!/bin/bash 
first=1
second=10

rm -rf /home/shivamhw/Scripts/mine/parcel/*
cd /home/shivamhw/Scripts/mine/parcel
cp ../* .
cp /home/shivamhw//Accounts/Checkers/mine_final/NetFlix/NF.py .
cp /home/shivamhw/Accounts/Checkers/mine_final/NetFlix/tiny .
cp -r /home/shivamhw/VPN/new/vpn .
cp /home/shivamhw/vpn_pass/pas* .
ls -lthr
tar cjf parcel.tar.gz *
