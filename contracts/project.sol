// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MemorySharingPlatform {

    // Mapping to store memories by address (user)
    mapping(address => string) private memories;

    // Event to log memory storage
    event MemoryStored(address indexed user, string memoryContent);

    // Function to store a memory on the blockchain
    function storeMemory(string memory memoryContent) public {
        // Store the memory for the sender address
        memories[msg.sender] = memoryContent;

        // Emit an event to log the memory storage
        emit MemoryStored(msg.sender, memoryContent);
    }

    // Function to get the memory of a particular address
    function getMemory(address user) public view returns (string memory) {
        return memories[user];
    }
}
