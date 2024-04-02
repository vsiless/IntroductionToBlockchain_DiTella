// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    address public towner;
    constructor() ERC20("FirstToken", "Viv") {
        towner = msg.sender;
    }

    function mint(address to, uint256 amount) public payable {
        require(msg.value >= amount);
        _mint(to, amount);
        payable(towner).transfer(msg.value);
    }
} 