#!/bin/bash
#auto buy rolls
MASSA_PATH=$1
if [ ! -n "$MASSA_PATH" ]
then
        MASSA_PATH =~/massa
fi
echo "massa path: $MASSA_PATH"
sleep 1

MASSA_CLIENT_PATH=$(MASSA_PATH)/massa-client

cd $MASSA_CLIENT_PATH
#
#echo $(./massa-client wallet_info)

candidate_balance=$(./massa-client wallet_info | grep 'Candidate balance' | awk '{print $3}')
candidate_rolls=$(./massa-client wallet_info | grep 'Candidate rolls' | awk '{print $3}')
active_rolls=$(./massa-client wallet_info | grep 'Active rolls' | awk '{print $3}')

private_key=$(./massa-client wallet_info | grep 'Private key' | awk '{print $3}')
address=$(./massa-client wallet_info | grep 'Address' | awk '{print $2}')
staking_addresses=$(./massa-client node_get_staking_addresses)

echo "Candidate balance: $candidate_balance"
echo "Candidate rolls: $candidate_rolls"
echo "Active rolls: $active_rolls"
echo
echo "private_key: $private_key"
echo "address: $address"
echo "staking_addresses: $staking_addresses"
echo

if [[ $staking_addresses != $address ]]
then 
        resp=$(./massa-client node_add_staking_private_keys $private_key)
        echo $resp
fi


if [[ $candidate_rolls == "0" ]]
then
        resp=$(./massa-client buy_rolls $address 1 0)
        echo $resp
elif [[ $((${candidate_balance%%.*})) -gt 99 ]]
then
        echo "$candidate_balance > 99"
        resp=$(./massa-client buy_rolls $address 1 0)
        echo $resp
fi

curl ip.gs
