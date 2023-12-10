// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

/// Alice can deposit 0.001 ETH and a user (Bob) can withdraw after 1 day
/// For testing, 1 min
contract harshEscrowNYU {
    address payable public alice;
    address payable public constant bob = payable(0xECf74C19215C8DD2BAF16AD3a6eC1A25386d813c);
    uint256 public depositTime;
    bool public isFunded;

    uint256 public constant depositAmount = 1e15; // 0.001 ETH

    // to deposit ETH to the contract
    function deposit() external payable {
        if (isFunded) {
            revert("Already funded the contract!");
        }
        if (msg.value != depositAmount) {
            revert("Deposit amount not exactly 0.001 ETH!");
        }
        alice = payable(msg.sender);
        depositTime = block.timestamp;
        isFunded = true;
    }
    // for Bob to withdraw ETH
    function withdraw() external {
        if (msg.sender != bob) {
            revert("Only Bob can withdraw funds!");
        }
        if (!isFunded) {
            revert("Contract is not funded!");
        }
        if (block.timestamp < depositTime + 1 days) {
            revert("Withdrawal not allowed yet. Wait for min 1 day!");
        }
        uint256 balance = address(this).balance;
        if (balance == 0) {
            revert("Not enough funds to withdraw!");
        }

        (bool success, ) = bob.call{value: balance}("");
        if (!success) {
            revert("Failed to send Ethereum");
        }
        isFunded = false;
    }
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}