// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract SimpleStorage {
    uint public storedData;

    constructor()  {
        storedData = 100;
    }

    function set(uint x) public {
        storedData = x;
    }

    function get() public view returns (uint retVal) {
        return storedData;
    }
}