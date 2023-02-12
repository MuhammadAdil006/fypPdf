#!/bin/bash

echo    "Installing the chaincode pkr20"
.    set-env.sh    acme
set-chain-env.sh       -n pkr20  -v 1.0   -p  AutomobileBS   
chain.sh install -p

echo    "Instantiating..."
set-chain-env.sh        -c   '{"Args":["init","Pkr","10000000", "Pakistani Rupee!!!","MAdil"]}'
chain.sh  instantiate

echo "Done."