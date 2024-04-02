// SPDX-License-Identifier: GPL-3.0
        

pragma solidity ^0.8.4;

// This import is automatically injected by Remix
import "remix_tests.sol"; 

// This import is required to use custom transaction context
// Although it may fail compilation in 'Solidity Compiler' plugin
// But it will work fine in 'Solidity Unit Testing' plugin
import "remix_accounts.sol";
import "../sc/test_unidad/math.sol";

// File name has to end with '_test.sol', this file can contain more than one testSuite contracts
contract testSuite {
    Math m;
    /// 'beforeAll' runs before all other tests
    /// More special functions are: 'beforeEach', 'beforeAll', 'afterEach' & 'afterAll'
    function beforeAll() public {
        // <instantiate contract>
        m = new Math();
    }

    function checkInitialize() public {
        // Use 'Assert' methods: https://remix-ide.readthedocs.io/en/latest/assert_library.html
        m.initialize();
        Assert.equal(m.getNumber(),0, " ");
    }
    /// #sender: account-0
    /// #value: 10
    function checkAddThree() public payable {
        m.addThree{gas: 400000, value: 1}();
        Assert.equal(m.getNumber(),3, " ");
        Assert.equal(address(m).balance, 1, " ");
    }
    
    function checkAdd() public {
        m.add(5);
        Assert.equal(m.getNumber(),8, " ");
    }

}
    