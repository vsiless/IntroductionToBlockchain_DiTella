// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract HelloWorld {
    event gotMessage();
    modifier emitGotMessage(){
        _;
        emit gotMessage();
    }

    string message;
    constructor(string memory _message)  {
        message = _message;
    }

    function getMessage() emitGotMessage public returns(string memory){
        return message;
    }


}
