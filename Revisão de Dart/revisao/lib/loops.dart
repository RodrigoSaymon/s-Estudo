void main() {
  var numeros = List.generate(10, (index) => 'Rodrigo $index');
  print(numeros);

  // for convencional
  //criação da variável; condição; tipo de interação
  // tenho o indice na mão
  print('for convencional');
  for (var i = 0; i < numeros.length; i++) {
    if (i == 3) {
      continue;
    }
    print(numeros[i]);
  }

  // for in
  print('for in');
  for (var numero in numeros) {
    if (numero == 'Rodrigo 5') {
      break;
    }
    print(numero);
  }

  // while e do while

  print('while convencional');
  var gato = 0;
  // executa até que a condição seja verdade
  while (gato < 5) {
    print(gato);
    gato++;
  }
// executa e depois verifica se a condição seja verdade
  do {
    print(gato);
    // gato++;
  } while (gato > 0);

  // interables

}
