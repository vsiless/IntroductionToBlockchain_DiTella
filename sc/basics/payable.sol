pragma solidity ^0.8.0;

contract Fundraiser {
    function donate() external payable {
        // Ether is received and stored in the contract's balance
        // You can perform any other actions with the Ether received here - for example, sending it to some other address etc.
    }
      // New Function -> currentContractBalance
    function currentContractBalance() public view returns (uint) {
        return address(this).balance; // returns the balance of the contract itself using the `balance` and `this` keywords.
    }
}