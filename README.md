# Ethereum Proof of Stake Network Setup with Geth and Lighthouse

## Introduction

This project provides a streamlined process for setting up an Ethereum Proof of Stake (PoS) network using Geth and Lighthouse. It's designed for users who are interested in exploring and testing the Ethereum PoS mechanism.

## Prerequisites

- Docker and Docker Compose
- Basic understanding of Ethereum, Geth, and Lighthouse

## Installation

Clone this repository to get started:

```
git clone https://github.com/lyfsn/pos-network-startup.git
```

After cloning, navigate to the project's root directory.

## Setup

Use the `initAndStart.sh` script when setting up the network for the first time. Execute it by running:

```
./initAndStart.sh
```

This script performs the following tasks:

1. Prepares the genesis data in ./genesis-data.
2. Clears any existing data and sets up the initial environment.
3. Initializes and launches the Geth execution client and the Lighthouse consensus client in geth-lighthouse-1.
4. Starts the Dora service located in the dora directory.
5. Launches a local browser service on port 9777 to view node status. [http://localhost:9777](http://localhost:9777)

To restart the network after a stop without reinitializing, use the `start.sh` script:

```
./start.sh
```

This will launch the network components without resetting the genesis data or clearing the existing data.

To stop the network, use the `down.sh` script:

```
./down.sh
```

This script will shut down all network components.

## Usage

After running the `initAndStart.sh` or `start.sh` script, depending on whether it's the initial setup or a restart, your Ethereum PoS network will be up and running. The network components include:

- Geth available on ports 8545 (HTTP) and 8546 (WebSocket).
- Lighthouse Beacon node on port 5052, with the validator client on port 5062.
- A local browser service on port 9777 to monitor node status.
- Additional configurations and ports as detailed in the Docker Compose files. Refer to the geth-lighthouse-1 directory for more on the network configuration.

## Contributing

Contributions are welcome. Please adhere to the following steps:

- Fork the repository.
- Create a new branch for your feature.
- Commit and push your changes.
- Submit a pull request with a detailed description.
