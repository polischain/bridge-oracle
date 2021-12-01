# Bridge Oracle 

> Instructions and tools to run a bridge oracle


This repository contains a docker-compose file and default configurations to easily deploy Acheron validator oracles.

## Supported networks
- Binance Smart Chain `.env.bsc`
- Fantom Opera `.env.ftm`
- Polygon `.env.polygon`

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
cp .env.bsc .env
```

3. Modify the environment file with your validator key

```
Modify the ORACLE_VALIDATOR_ADDRESS_PRIVATE_KEY variable inside the .env file with your validator private key
```

4. Run the service
```
docker-compose -d up 
```




