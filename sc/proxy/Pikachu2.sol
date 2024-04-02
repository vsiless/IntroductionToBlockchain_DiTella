// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Pokemon {
  uint private capturedPokemons = 0;

  function getCaptured() external view returns(uint) {
    return capturedPokemons;
  }
  function capture() internal {
    capturedPokemons++;
  }
}

contract Pikachu is Pokemon {
  function PikachuEncounter() public  {
    capture();
  }
}
contract PikaTrucho is Pokemon {
    function PikachuEncounter() public {
        
    }
}

contract CapturedChecker  
{
   Pokemon private pok;

   constructor(address pokemon)  {
      pok =  Pokemon(pokemon);
   }  
   
   function replacePokemon( address pokemon) public  {
        pok =  Pokemon(pokemon);
   }

   function getAmountCaptured() public view returns(uint) 
   { 
      return pok.getCaptured(); 
   }
}