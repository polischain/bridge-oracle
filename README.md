# Bridge Oracle 

> Instructions and tools to run a bridge oracle


This repository contains a docker-compose file and default configurations to easily deploy Acheron validator oracles.

## Supported bridges networks
- Polis <=> Binance Smart Chain `.env.polis-bsc`
- Polis <=> Fantom Opera `.env.polis-ftm`
- Polis <=> Polygon `.env.polis-polygon`
- Polis <=> Avalanche `.env.polis-avalanche`
- Polis <=> Mainnet `.env.polis-mainnet`
- Polis <=> Iotex `.env.polis-iotex`

## Instructions

Prerequisites:
1. Linux (debian based) environment.
2. `docker` and `docker-compose`.
3. Having a validator private key.

Installation

1. Clone the repository

```
git clone https://github.com/polischain/bridge-oracle && cd bridge-oracle
```

2. Choose the network on which do you want to deploy the validator and create the environment file

> Example for Binance Smart Chain
```
cp .env.polis-bsc .env
```

3. Modify the environment file with your validator key

```
Modify the ORACLE_VALIDATOR_ADDRESS_PRIVATE_KEY variable inside the .env file with your validator private key
```

4. Run the service

To run the service in the background use:
```
docker-compose up -d
```
To run the service and watch the logs use:
```
docker-compose up
```

5. Stop the service
```
docker-compose down
```




