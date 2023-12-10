// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
//Send to (I'm truncating for security) 0x4A2dAC.....5E6CcF444d6c
contract NYUDEV is ERC20 {
    constructor() ERC20("NYUDEV", "NYUD"){
        _mint(msg.sender,1000*10**18);
    }
}