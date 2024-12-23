# Memory Sharing Platform

This is a decentralized memory-sharing platform built on the Ethereum blockchain using Solidity and Web3.js. It allows users to store and view memories on the blockchain. Each user can store their memories (text-based) on the blockchain, and others can view them by specifying the Ethereum address of the memory owner.

### Features:

- **Store Memories**: Users can store their memories on the blockchain by interacting with the smart contract.
- **View Memories**: Users can view memories stored by others by providing an Ethereum address.
- **Decentralized**: All memories are stored on the blockchain, making them immutable and transparent.

---

## Table of Contents

- [Tech Stack](#tech-stack)
- [Getting Started](#getting-started)
- [Contract Deployment](#contract-deployment)
- [Frontend](#frontend)
- [Interacting with the App](#interacting-with-the-app)
- [License](#license)

---

## Tech Stack

- **Blockchain**: Ethereum
- **Smart Contract**: Solidity (for the Ethereum contract)
- **Frontend**: HTML, JavaScript, Web3.js
- **MetaMask**: For interacting with the Ethereum blockchain

---

## Getting Started

### Prerequisites

Before using this platform, you need to have the following installed:

1. **MetaMask**: A browser extension that acts as a bridge to interact with Ethereum. [Install MetaMask](https://metamask.io/).
2. **Ethereum Wallet**: You need an Ethereum wallet with some test Ether (for local testing, use Rinkeby or another test network).
3. **Web Browser**: Any modern browser (Chrome or Firefox) that supports MetaMask.

---

### Clone the Repository

To get started, clone the repository:

```bash
git clone https://github.com/your-username/memory-sharing-platform.git
cd memory-sharing-platform
```

---

## Contract Deployment

You will need to deploy the `MemorySharingPlatform` smart contract to an Ethereum network (testnet or mainnet).

### Steps to Deploy

1. **Install Dependencies**: Ensure you have `solc`, `truffle`, or any Solidity framework to compile and deploy contracts.

   ```bash
   npm install
   ```

2. **Deploy the Contract**:
   Use any Ethereum deployment tool (like **Truffle** or **Hardhat**) to deploy the contract. Here's an example of using **Hardhat** for deployment:

   - Install Hardhat:

     ```bash
     npm install --save-dev hardhat
     ```

   - Deploy the contract with the following script:

     ```javascript
     const { ethers } = require("hardhat");

     async function main() {
       const [deployer] = await ethers.getSigners();
       console.log("Deploying contracts with the account:", deployer.address);

       const MemorySharingPlatform = await ethers.getContractFactory(
         "MemorySharingPlatform"
       );
       const contract = await MemorySharingPlatform.deploy();

       console.log(
         "MemorySharingPlatform contract deployed to:",
         contract.address
       );
     }

     main()
       .then(() => process.exit(0))
       .catch((error) => {
         console.error(error);
         process.exit(1);
       });
     ```

3. **Get the Contract Address**: After deploying, take note of the contract address.

---

## Frontend

The frontend is a simple HTML page that uses **Web3.js** to interact with the smart contract. It allows users to store memories and view memories based on Ethereum addresses.

1. **Configure the Contract Address**:

   - Replace the `YOUR_CONTRACT_ADDRESS` placeholder in the frontend code with the actual deployed contract address.

2. **Open the HTML File**:
   - Open the `index.html` file in your web browser.
   - Ensure that MetaMask is installed and connected to the same network where the contract is deployed.

---

## Interacting with the App

### 1. **Connect MetaMask**:

- Click the **"Connect MetaMask"** button to connect your wallet to the platform.
- Ensure MetaMask is connected to the Ethereum network where the contract is deployed.

### 2. **Store a Memory**:

- Enter the memory content in the text box.
- Click the **"Store Memory"** button to store your memory on the blockchain.
- The memory will be stored in the blockchain, and the transaction will be logged on the blockchain.

### 3. **View a Memory**:

- Enter an Ethereum address to view the memory stored by that address.
- Click the **"View Memory"** button to fetch and display the memory stored by that address.

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgements

- **Solidity**: Used for smart contract development.
- **Web3.js**: JavaScript library to interact with the Ethereum blockchain.
- **MetaMask**: A crypto wallet and gateway to blockchain apps.

---
