pragma solidity ^0.8.6;

//defined interface needed to interact with other contract
interface Ibusinesslogic {
  function getAge() external pure returns(uint);
}

contract MainContract {
  //set an admin address
  address public admin;
  //interface contract address
  Ibusinesslogic public businesslogic;
  //the admin is the owner
  constructor() {
    admin = msg.sender;
  }

 
  //function to upgrade the contract to point to execute function
  function upgrade(address _businesslogic) external {
    require(msg.sender == admin, 'only admin');
    businesslogic = Ibusinesslogic(_businesslogic);
  }


  //call the getAge function using the businesslogic function
  function getAge() external view returns(uint) {
    return businesslogic.getAge();
  }
}

//satelliteV1 uses the Ibusinesslogic interface
contract satelliteV1 is Ibusinesslogic {
  function getAge() override external pure returns(uint) {
    return 25;
  }
}


pragma solidity ^0.8.6;

//satelliteV2 uses the Ibusinesslogic interface
contract satelliteV2 is Ibusinesslogic {
  function getAge() override external pure returns(uint) {
    return 32;
  }
}