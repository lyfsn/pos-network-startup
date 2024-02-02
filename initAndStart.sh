cd ./genesis-data
./setTime.linux.sh
./setTime.mac.sh
./run.sh

cd ../geth-lighthouse-1
./clear.sh
./cpGenesisData.sh
./initExecution.sh
./start.sh

cd ../dora
./cpGenesisData.sh
./start.sh
