// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract StorePoints {
  // Definizione della mappa indirizzo-punti
  mapping(address => int) mappa_punti;

  // Evento di errrore nel caso in cui l'utente non ha abbastanza punti per comprare quel prodotto
  event NeedMorePointsMessage( address _indirizzo, string message );

    // vado a ricercare nella mappa l'address ( from ) e restituisco il valore di punti che è stato salvato
    function getPunti(address _indirizzo) public returns (int256) {
        if (mappa_punti[_indirizzo] == 0) {
            mappa_punti[_indirizzo] = 0;
        } else return mappa_punti[_indirizzo];
    }

    // Venogno aggiunti o tolti i punti
    function setPunti(address _indirizzo, int256 amount) private {
        mappa_punti[_indirizzo] = amount + getPunti(_indirizzo); // aggiorno il valore nella mappa
    }

    // Utilizzata per gestire l'acquisto con i punti
    function spendPoints(address _indirizzo, int256 amount) private {
      if(getPunti(_indirizzo) > amount){ // se vuole spendere più punti di quelli che ha faccio partire un evento di errore
        emit NeedMorePointsMessage(_indirizzo, "Punti insufficienti");
      }else{
        setPunti(_indirizzo, amount*-1); // aggiorno i punti dell'account dopo la speso
      }
    }//Gabriela
}
