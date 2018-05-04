#!/usr/bin/env bash

set -e

echo
echo Stopping admin app...
ssh -t -p 17900 -i ~/.ssh/cryptoscan_rsa noise@185.117.89.217 "cryptoadmin stop"
echo
sleep 10
echo Deploying...
scp -P 17900 -i ~/.ssh/cryptoscan_rsa ./target/cryptoadmin-0.0.1-SNAPSHOT.jar noise@185.117.89.217:/app/cryptoadmin.jar
echo Deploy OK
echo
echo Starting admin app...
ssh -t -p 17900 -i ~/.ssh/cryptoscan_rsa noise@185.117.89.217 "cryptoadmin start"
echo
echo SUCCESS: Admin app deployed and restarted