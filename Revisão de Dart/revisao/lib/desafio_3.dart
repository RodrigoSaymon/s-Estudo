void main() {
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  print('Parcientes maiores de 20 anos');

  for (var paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    int idade = int.parse(dadosPaciente[1]);
    var nome = dadosPaciente[0].toLowerCase();
    if (idade >= 20) {
      print('nome: $nome, idade: $idade');
    }
  }
  print('');

  final desenvolvedor = [];
  final estudante = [];
  final dentista = [];
  final jornalista = [];

  for (var paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    int idade = int.parse(dadosPaciente[1]);
    var nome = dadosPaciente[0].toLowerCase();
    var profissao = dadosPaciente[2].toLowerCase();

    if (profissao == 'desenvolvedor') {
      desenvolvedor.add(nome);
    }
    if (profissao == 'estudante') {
      estudante.add(nome);
    }
    if (profissao == 'dentista') {
      dentista.add(nome);
    }
    if (profissao == 'jornalista') {
      jornalista.add(nome);
    }
  }
  print('${desenvolvedor.length} desenvolvedores:');
  desenvolvedor.forEach(print);
  print('');
  print('${estudante.length} estudante:');
  estudante.forEach(print);
  print('');
  print('${dentista.length} dentista:');
  dentista.forEach(print);
  print('');
  print('${jornalista.length} jornalista:');
  jornalista.forEach(print);
  print('');

  final sp = [];

  for (var paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    var nome = dadosPaciente[0].toLowerCase();
    var estado = dadosPaciente[3].toLowerCase();

    if (estado == 'sp') {
      sp.add(nome);
    }
  }
  print('${sp.length} pacientes mora em SP:');
  sp.forEach(print);
}
