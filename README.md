# Smart Contract for Assignment 2 of CSGY-9223 A course (Introduction to Blockchain and Distributed Ledger)

Deployed and tested on Sepolia Ethereum Testnet
The assignment entails the creation of two types of smart contracts using the Remix IDE:

  1. Simple Escrow Contract: A contract where Alice sends money to a contract, and Bob can withdraw from this contract after a fixed amount of time.

  2. Simple ERC20 Token: The task involves creating an ERC20 token named "NYUDEV" with the symbol "NYUD", which is minted and sent to the deployer's address.

# Implementation
Source code for part 1.1 - Part1.1/contracts/Escrow.sol
  Aim: Between two wallets, set an escrow system where Alice sends 0.001 Eth to the contract and the second party (Bob) can withdraw after 1 day of time.
  Contract Address: 0x39d3FD0D3416b4b61F5aA5596Ce477eDa845b2D2

Source code for part 1.2 - Part1.2/contracts/SimpleERC20.sol
  Aim: Creation of a custom ERC20 token, mint 100 tokens, then finally transder to a given wallet address.
  Token Name: "NYUDEV"
  Token Symbol: "NYUD"
  Transaction: 1000 NYUD tokens minted to the deployer's address.
  Contract Address: 0xe56279dd305E285549bD3769776D4E7A59209ef8
