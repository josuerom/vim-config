// Programa que halla el producto de los 10 primero números impares.
for (i = 1, acc = 1; i <= 19; i += 2) {
  acc = (acc * i);
}
console.log('Resultado =', acc);

// Programa que muestra la cantidad de ceros ingresados.
const arreglo = [1, 2, 4, 3, 0, 5, 8, 0, 7, 6, 9, 10, 0, 11];
for (i = 0, acc = 0; i < 14; i++) {
  if (arreglo[i] === 0) {
    acc++;
  }
}
console.log('Cantidad de ceros =', acc);
