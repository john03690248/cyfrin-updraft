// Get funds from users
// Withdraw funds
// Set a minimum funding value in USD

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract FundMe {

    uint public minimumUsd = 5;
    
    function fund() public payable {
        // Allow users to sen $
        // Have a minimnm $ sent $5
        // 1. How do we send ETH to this contract?
        require(msg.value >= minimumUsd, "didn't send enough ETH"); // 1e18 = 1 ETH = 1000000000000000000 = 1 * 10 ** 18

        // What is a revert?
        // Undo any actions that have been done, and send the remaining gas back
    }

    // function withdraw() public{}

    function getPrice() public {
        // Address 0x694AA1769357215DE4FAC081bf1f309aDC325306
        // ABI
    }
    function getConversionRate() public {}
}