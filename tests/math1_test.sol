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
        //COMPLETAR 
    }

    function checkInitialize() public {
        //COMPLETAR: inicializar y checkear valor inicial
    }
    /// #sender: account-0
    /// #value: 10
    function checkAddThree() public payable {
        //COMPLETAR:  llamar a addTree
        //COMPLETAR:  verificar numero 
        //COMLETAR: verificar balance del contrato.
       
    }
    
    function checkAdd() public {
        //COMPLETAR: llamar a add
        //COMPLETAR: verificar que sumo correctamente
    }

}
    