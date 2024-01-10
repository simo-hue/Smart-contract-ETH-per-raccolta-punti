// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract StorePoints {

  // Definizione della mappa indirizzo-punti
  mapping(address => uint256) mappa_punti;

  // vado a ricercare nella mappa l'address ( from ) e restituisco il valore di punti che è stato salvato
  function getPunti(address _indirizzo) public view returns (uint) {
        return mappa_punti[_indirizzo];
    }

  function setPunti() private {
    
  }
}
