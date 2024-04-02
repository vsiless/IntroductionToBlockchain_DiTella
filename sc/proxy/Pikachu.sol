// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Pokemon {
  uint private capturedPokemons = 0;

  function sucess() public view returns (bool) { 
    return capturedPokemons > 5;
  }
  function getCaptured() external view returns(uint) {
    return capturedPokemons;
  }
  function init() private {
    capturedPokemons=0;
  }
  function capture() internal {
    capturedPokemons++;
    //getCaptured(); 
    sucess();
  }
}

contract Pikachu is Pokemon {
  uint private pikachuEncounters = 0;

  function PikachuEncounter() public returns (uint ) {
    pikachuEncounters++;
    capture();
    sucess();
    //init();
    //getCaptured();
    return pikachuEncounters;
  }
}
contract PikaTrucho is Pokemon {

  function PikachuEncounter() public pure returns (uint ) {
    return 0;
  }
}
contract ExternalContract  
{
   Pokemon private pok;

   constructor(address _address)  {
      pok =  Pokemon(_address);
   }  

   function reemplazarPicachu(address _address) public {
      pok =  Pokemon(_address);
   }
   
   function getAmountCaptured() public view returns(uint) 
   { 
      pok.sucess();
      return pok.getCaptured(); 
   }
}