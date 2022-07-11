void main() {
  String? nome;
  String sobreNome = ' Saymon';
  List nomes = [
    'Rodrigo',
    'Elã',
    'Heitor',
    'Julieta',
    'Miguel',
    'Grayce',
    'Michelle',
    'Gabriel',
    'Gabriel',
  ];

  Map<int, String> numeros = Map();
  // numeros[0] = 'Rodrigo';

  nome = 'Rodrigo';
  var  nomeMap = nomes.asMap();
  print(nomeMap.keys);
  print(nomeMap.values);
  // for (var item in nomeMap){}
  // print(nomes[3]);

  // print(nomes);
}
