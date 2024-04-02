// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Math {
    uint256 ourNumber;

    function initialize() public {
        ourNumber = 0;
    }

    function getNumber() public view returns (uint256) {
        return ourNumber;
    }

    function addThree() public payable{
        ourNumber = ourNumber + 3;
    }

    function add(uint256 value) public {
        ourNumber = ourNumber + value;
    }
}
