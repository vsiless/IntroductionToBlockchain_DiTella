// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
abstract contract SayHello {
    uint256 public age;
    constructor(uint256 _age ){
        age = _age;
    }

    function getAge() public virtual view returns (uint256){
        return age;
    }
    function setAge(uint256 _age) public virtual;
    function makeMeSayHello() public  pure returns (string memory) 
    {
        return "Hello";
    }
}

contract Hello is SayHello {
    string public name;
    constructor(string memory _name  ,uint256  _age)  
     SayHello(_age) {
       name = _name;
    }

    function setName(string memory _name ) public {
        name = _name;
    }

    function getName() public view returns (string memory){
        return name;
    }

   function getAge() public override virtual view returns  (uint256){
        return 67;
    }

    function setAge(uint256 _age ) public override virtual {
        age = _age;
    }
}