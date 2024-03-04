// Carica il contratto
let storePoints = await StorePoints.deployed();

// Ottieni il saldo di punti per un indirizzo
let balance = await storePoints.getPunti('0xda141006d467a0661fd1e93496dd83c8bd965be9');
console.log('Punti disponibili:', balance.toNumber());

// Esegui una transazione di acquisto con i punti
await storePoints.spendPoints('0xda141006d467a0661fd1e93496dd83c8bd965be9', 3);