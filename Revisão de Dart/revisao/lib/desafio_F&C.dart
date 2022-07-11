void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];
  print('Remova os pacientes duplicados e apresente a nova lista');
  var pessoasNova = pessoas.toSet();
  pessoasNova.forEach(print);
  print('');
  print(
      'Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas');
  var Masculino = [];
  var Feminino = [];

  for (var pessoa in pessoasNova) {
    var dados = pessoa.split('|');
    var nome = dados[0].toLowerCase();
    var sexo = dados[2].toLowerCase();

    if (sexo == 'masculino') {
      Masculino.add(nome);
    } else {
      Feminino.add(nome);
    }
  }
  print('${Masculino.length} pessoas do sexo Masculino');
  Masculino.forEach(print);
  print('');
  print('${Feminino.length} pessoas do sexo Feminino');
  Feminino.forEach(print);
  print('');
  print(
      'Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome');
  var maiores = [];

  for (var pessoa in pessoasNova) {
    var dados = pessoa.split('|');
    var nome = dados[0].toLowerCase();
    int idade = int.parse(dados[1]);
    var dados2 = nome + ', ' + idade.toString();

    if (idade >= 18) {
      maiores.add(dados2);
    }
  }
  print('${maiores.length} pessoas maiores de 18 anos');
  maiores.forEach(print);

  print('');
  print('Encontre a pessoa mais velha e apresente o nome dela');

  var maisVelha = [];

  for (var pessoa in pessoasNova) {
    var dados = pessoa.split('|');
    var nome = dados[0].toLowerCase();
    int idade = int.parse(dados[1]);
    String veia = idade.toString() + ', ' + nome;

    if (idade >= 0) {
      maisVelha.add(veia);
    }
  }
  maisVelha.sort();

  var campeao = maisVelha.toList().last;

  print(campeao);
}
