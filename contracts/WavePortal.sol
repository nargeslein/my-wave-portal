// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.17;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    mapping (address => uint256) public addresses; 

    constructor() {
        console.log("My name is WavePortal, I am a contract and I am smart");
    }

    function wave() public {
        totalWaves += 1;
        addresses[msg.sender] += 1;
        console.log("%s has waved friendly!", msg.sender);
    }

    function unwave() public {
        if(addresses[msg.sender]>0) {
            totalWaves -= 1;
            addresses[msg.sender] -= 1;
            console.log("%s has unwaved friendly!", msg.sender);
        }
    }


    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }
}