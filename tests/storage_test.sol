// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

// This import is automatically injected by Remix
import "remix_tests.sol"; 

// This import is required to use custom transaction context
// Although it may fail compilation in 'Solidity Compiler' plugin
// But it will work fine in 'Solidity Unit Testing' plugin
import "remix_accounts.sol";
import "../sc/test_unidad/storage.sol";

// File name has to end with '_test.sol', this file can contain more than one testSuite contracts
contract testSuite {
    SimpleStorage foo;
    /// 'beforeAll' runs before all other tests
    /// More special functions are: 'beforeEach', 'beforeAll', 'afterEach' & 'afterAll'
    function beforeAll() public {
        // <instantiate contract>
        foo =new SimpleStorage();
    }

    function checkGet() public  returns (bool){
        return Assert.equal(foo.get(), foo.storedData(), " get and store date differ");
    }

    function initialValueIs100() public {
        Assert.equal(foo.get(),100, "is not 100");
    }

    function checkSet() public returns (bool) {
        // Use 'Assert' methods: https://remix-ide.readthedocs.io/en/latest/assert_library.html
        Assert.equal(foo.get(), 100, "is not 100 at the begining");
        foo.set(4);
        return Assert.equal(foo.get(), 4, "is not 4 after settting it");
    }
}
    