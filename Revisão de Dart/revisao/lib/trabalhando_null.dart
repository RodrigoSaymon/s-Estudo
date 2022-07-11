String? nomeSuper;

void main() {
  // String nome = '';
  // String? nomeNull;
  // var nomeLocal = nomeSuper;

  // if (nomeLocal != null) {
  //   nomeLocal.isEmpty;
  // }

  // nomeLocal.isEmpty;

  // nomeNull = '';

  // nome.isEmpty;
  // nomeNull.isEmpty;

  var nomeCompleto =
      ((nomeSuper != null) ? nomeSuper! + 'Rodrigo' : 'Rodrigo Saymon');

// null Aware operator
  var nomeCopleto = nomeSuper ?? 'Rodrigo Saymon';
  print(nomeCompleto);

  // var nomeCompletoLocal = nomeSuper;
  // if (nomeCompletoLocal != null) {
  // Conditional property Access
  print(nomeSuper?.toUpperCase());
  // Os dois juntos
  print(nomeSuper?.toUpperCase() ?? 'Rodrigo');
  // }
}
