FROM node:12

RUN apt-get update && \
    apt-get install -y build-essential libc6-dev libc6-dev-i386 wget && \
    apt-get clean

WORKDIR /mono
COPY package.json .
COPY yarn.lock .
RUN NOYARNPOSTINSTALL=1 yarn install --frozen-lockfile --production

CMD echo "To start a bridge process run:" \
  "ORACLE_VALIDATOR_ADDRESS=<validator address> ORACLE_VALIDATOR_ADDRESS_PRIVATE_KEY=<validator address private key> docker-compose up -d --build"