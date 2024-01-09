


export NODE1_ADDRESS=127.0.0.1
export IP_ADDRESS=127.0.0.1

RESPONSE_EL=$(curl -m 1 -s -X POST -H "Content-Type: application/json" --data @el.request.json http://$NODE1_ADDRESS:8545)
ENODE=$(echo $RESPONSE_EL | jq -r '.result.enode')
export EL_BOOTNODES=$ENODE

RESPONSE_CL=$(curl -m 1 -s -X GET -H "Content-Type: application/json" http://$NODE1_ADDRESS:5052/eth/v1/node/identity)
PEER_ID=$(echo $echo $RESPONSE_CL | jq -r '.data.peer_id')
ENR=$(echo $echo $RESPONSE_CL | jq -r '.data.enr')
export CL_TRUSTPEERS=$PEER_ID
export CL_BOOTNODES=$ENR

export CL_CHECKPOINT=http://$NODE1_ADDRESS:5052/


echo "EL_BOOTNODES=$EL_BOOTNODES"
echo "CL_BOOTNODES=$CL_BOOTNODES"
echo "CL_TRUSTPEERS=$CL_TRUSTPEERS"
echo "CL_CHECKPOINT=$CL_CHECKPOINT"

docker compose -f compose.yaml up -d



