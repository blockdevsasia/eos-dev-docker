cleos wallet create > .Pass
cleos create key > .OwnerKeys
cleos create key > .ActiveKeys
cleos wallet import $(cat .OwnerKeys |grep Private |cut -d" " -f3)
cleos wallet import $(cat .ActiveKeys |grep Private |cut -d" " -f3)
cleos wallet import 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3

OwnerKey=$(cat .OwnerKeys |grep Public |cut -d" " -f3)
ActiveKey=$(cat .ActiveKeys |grep Public |cut -d" " -f3)

cleos create account eosio $USER $OwnerKey $ActiveKey
