pragma solidity ^0.5.0;

contract Owner {
   address owner;
   event noExecution();
   constructor() public {
      owner = msg.sender;
   }
   modifier onlyOwner {
      require(msg.sender == owner);
      _;
   }
   modifier costs(uint price) {
      if (msg.value >= price) {
         _;
      }
      else
      {
          emit noExecution();
      }
   }
}
contract Register is Owner {
   mapping (address => bool) registeredAddresses;
   uint price;

  modifier onlyRegistered{
      require(registeredAddresses[msg.sender]);
      _;
   }
   constructor(uint initialPrice) public { 
       price = initialPrice;
    }
   
   function register() public payable costs(price) {
      registeredAddresses[msg.sender] = true;
   }
   function changePrice(uint _price) public onlyOwner {
      price = _price;
   }

   function isRegistered(address _address) public view  onlyRegistered returns(bool) {
       return registeredAddresses[_address];
   }
}