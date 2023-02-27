pkr20 
=====
https://theethereum.wiki/w/index.php/pkr20_Token_Standard

Commonly used standard for creating tokens on Ethereum. This implementation of the pkr20 on Fabric is not covering all of the functions. The idea is demonstrate the creation of standard token on Hyeprledger Fabric. For more information please refer to the website link above. To keep things simple this implementation identifies users by "unique id" rather than the public key (in Ethereum)

Functions
=========
- Token created as part of the "chaincode" instantiation
- [transfer]    function transfer the specified number of tokens from one user to another
- [balanceOf]   returns the number of tokens owned by the specified user

Install
=======
Install the chaincode on the Acme Peer-1
  .    set-env.sh    acme
  set-chain-env.sh       -n pkr20  -v 1.0   -p  AutomobileBS   
  chain.sh install -p

Instantiate
===========
Instantiate the chaincode

 set-chain-env.sh        -c   '{"Args":["init","Pkr","10000000", "Pakistani Rupee!!!","MAdil"]}'
 chain.sh  instantiate

Query
=====
Query the balance for 'Madil'
 set-chain-env.sh         -q   '{"Args":["balanceOf","3520299610969"]}'
 chain.sh query

Invoke
======
Transfer 100 tokens from 'MAdil' to 'Dar'
  set-chain-env.sh         -i   '{"Args":["transfer", "3520299610969", "1234", "100","Dar"]}'
  chain.sh  invoke

Query
=====
Check the balance for 'Madil' & 'Dar'
 set-chain-env.sh         -q   '{"Args":["balanceOf","3520299610969"]}'
 chain.sh query
 set-chain-env.sh         -q   '{"Args":["balanceOf","1234"]}'
 chain.sh query

<!-- ==============
Events Testing
==============
Launch the events utility
 events.sh -t chaincode -n pkr20 -e transfer -c airlinechannel  -->

<!-- In a <<Terminal #2> execute the invoke - observe transfer events in terminal 1
  set-chain-env.sh         -i   '{"Args":["transfer", "3520299610969", "1234", "10","Dar"]}'
  chain.sh invoke -->

<!-- 
Node version
============
https://github.com/grepruby/pkr20-Token-On-Hyperledger -->
