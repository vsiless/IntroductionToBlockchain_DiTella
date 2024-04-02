// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Proxy {
    uint256 ourNumber2;
    address public implementation;
    function initialize() public {
        ourNumber2 = 0x28;
    }
    function getNumber2() public view returns (uint256) {
        return ourNumber2;
    }
    function setImplementation(address implementation_) public {
        implementation = implementation_;
    }
    fallback() external {
        assembly {
            let ptr := mload(0x40)
            calldatacopy(ptr, 0, calldatasize())
            let result := delegatecall(
                gas(),
                sload(implementation.slot),
                ptr,
                calldatasize(),
                0,
                0
            )
            let size := returndatasize()
            returndatacopy(ptr, 0, size)
            switch result
            case 0 {
                revert(ptr, size)
            }
            default {
                return(ptr, size)
            }
        }
    }
}

contract Add3 {
    uint256 ourNumber;

    function initialize() public {
        ourNumber = 0x64;
    }

    function getNumber() public view returns (uint256) {
        return ourNumber;
    }

    function addThree() public {
        ourNumber = ourNumber + 3;
    }
}
