// SPDX-License-Identifier: MIT
pragma solidity 0.5.2;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol';

contract Token is ERC20Mintable{
    	string public name = "VS2";
    	string public symbol = "VS2";
    	uint8 public decimals = 2;
}
