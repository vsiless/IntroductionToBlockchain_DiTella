// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "remix_tests.sol"; 
import "../sc/test_unidad/value.sol";

contract ValueTest{
    Value v;
    
    function beforeAll() public {
        // create a new instance of Value contract
        v = new Value();
    }
    
    /// Test initial balance
    function testInitialBalance() public {
        // initially token balance should be 0
        uint expected = 0;
        Assert.equal(v.getTokenBalance(), expected, "no es cero");
    }
    
    /// For Solidity version greater than 0.6.1
    /// Test 'addValue' execution by passing custom ether amount 
    /// #value: 200
    function addValueOnce() public payable {
        // check if value is effectively 200
        uint value =200;
        uint expected= 20;
        Assert.equal(msg.value , value, "no recibo 200");
        // execute 'addValue'
        v.addValue{gas: 40000, value: msg.value}(); // introduced in Solidity version 0.6.2
        // As per the calculation, check the total balance
        Assert.equal(v.getTokenBalance(), expected, "no es correcto");
    }

}