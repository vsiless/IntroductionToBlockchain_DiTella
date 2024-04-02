pragma solidity ^0.5.0;

contract Owner {
   address  owner;
   event pocaPlata();
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
         emit pocaPlata();
      }
   }
}
contract Register is Owner {
   mapping (address => bool) registeredAddresses;
   uint price;
   constructor(uint initialPrice) public { price = initialPrice; }
   
   modifier onlyRegistered {
      require(registeredAddresses[msg.sender] , " Solo direcciones registradas. " );
      _;
   }
   function register() public payable costs(price) {
      registeredAddresses[msg.sender] = true;
   }
   function changePrice(uint _price) public onlyOwner {
      price = _price;
   }
   function isRegistered1(address midireccion) public onlyRegistered view returns(bool) {
      return registeredAddresses[midireccion];
   }
  function isRegistered2() public onlyRegistered view returns(bool) {
      return registeredAddresses[msg.sender];
   }

}