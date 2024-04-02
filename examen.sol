contract Owner {
   address  owner;
   constructor() public {
      owner = msg.sender;
   }
   modifier onlyOwner {
      require(msg.sender == .......);
      _;
   }
}

contract SendEther {
    function sendViaTransfer(address payable _to) public ............. {
        _to.transfer(msg.value);
    }
}



