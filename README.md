## Ethereum Proof of Stake Network Setup with Geth and Lighthouse

### Introduction

This project provides a streamlined process for setting up an Ethereum Proof of Stake (POS) network using Geth and Lighthouse. It's designed for users who are interested in exploring and testing the Ethereum POS mechanism.

### Prerequisites

- Docker and Docker Compose
- Basic understanding of Ethereum, Geth, and Lighthouse

### Installation

Clone this repository to get started:

```
git clone https://github.com/lyfsn/pos-network-startup.git
```

After cloning, navigate to the project's root directory.

### Setup

The `start.sh`` script in the root directory automates the network setup. Execute it by running:

```
./start.sh
```

This script performs the following tasks:

1. Prepares the genesis data in ./genesis-data.
2. Initializes and launches the Geth execution client and the Lighthouse consensus client in geth-lighthouse-1.
3. Starts the Dora service located in the dora directory.

### Usage

Once the `start.sh`` script completes, your Ethereum POS network will be up and running. The network components include:

- Geth available on ports 8545 (HTTP) and 8546 (WebSocket).
- Lighthouse Beacon node on port 5052, with the validator client on port 5062.
- Additional configurations and ports as detailed in the Docker Compose files.
  Refer to the geth-lighthouse-1 directory for more on the network configuration.

### Contributing

Contributions are welcome. Please adhere to the following steps:

- Fork the repository.
- Create a new branch for your feature.
- Commit and push your changes.
- Submit a pull request with a detailed description.
