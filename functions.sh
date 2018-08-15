eosiocpp() { d=/contracts/usr; docker exec nodeosd /opt/eosio/bin/eosiocpp $1 $d/$2 $d/$3; }
eosbuild() { d=/contracts/usr; eosiocpp -o $1.wast $1.cpp; eosiocpp -g $1.abi $1.cpp; cleos set contract $USER $d/${1%/*} $d/$1.wast $d/$1.abi; }
