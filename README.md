# Smart-contract-ETH-per-raccolta-punti

ogni 10$ diamo 1 punto

mappa (address, punti) per gestire i punti accumulati dagli utenti

Funzioni:
  - getPunti(address) // dato l'indirizzo mi restituisce il numero di punti accumulati
  - setPunti(address, amount) // dato l'indirizzo aggiorna numero di punti accumulati [ invoco getPunti e poi aggiungo i punti accumulati su l'ultima transazione ]



COMANDI UTILI: 

Contracts: Compile:         cd truffle && truffle compile
  Contracts: Test:            cd truffle && truffle test
  Contracts: Migrate:         cd truffle && truffle migrate
  Dapp: Run dev server:       cd client && npm start
  Dapp: Test:                 cd client && npm test
  Dapp: Build for production: cd client && npm run build

