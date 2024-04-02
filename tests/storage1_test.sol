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
        foo = new SimpleStorage();
    }

     function initialValueIs100() public {
        //COMPLETE
        uint storedData = foo.get();
        Assert.equal(storedData, 100, "el valor inicial no es 100!");
    }

    function checkGet() public  returns (bool){
        //COMPLETE
        uint storedData = foo.get();
        uint storedDataPosta = foo.storedData();
        return Assert.equal(storedData, storedDataPosta, "no son iguales!");
    }

   
    function checkSet() public returns (bool) {
        //COMPLETE
        foo.set(200);
        uint storedData = foo.get();
        return Assert.equal(storedData, 200, "no es 200");
    }
}