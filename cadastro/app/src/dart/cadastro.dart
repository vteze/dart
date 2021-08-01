import './pessoa.dart';

class Cadastro {

  List<Pessoa> pessoas;

  Cadastro ({this.pessoas = const []});

  get nomes {
    var lista = this.pessoas.map((pessoa) => pessoa.nome);
    return lista;
  }

  String verificarSexo() {

    var sexo = pessoas.map((e) => e.sexo);

    if (sexo.contains("M")) {
      return "Há tanto homens quanto mulheres na lista";
    }
    else if (sexo.contains("F")) {
      return "Há somente mulheres na lista";
    }
    else {
      return "Há somente homens na lista";
    }
  }

  String idadeMediaMulheres() {

    var mulheres = pessoas.where((e) => e.sexo == 'F');
    var idade = mulheres
        .map((mulher) => mulher.idade)
        .reduce((cont, idade) => cont += idade);

    return 'A média da idade das mulheres é de ${idade/mulheres.length}';
  }

  String idadeMediaHomens() {

    var homens = pessoas.where((e) => e.sexo == 'M');
    var idade = homens
        .map((homem) => homem.idade)
        .reduce((cont, idade) => cont += idade);

    return 'A média da idade dos homens é de ${idade/homens.length}';
  }

  String salarioMedio() {
    var mulheres = pessoas.where((e) => e.sexo == 'F');
    var salarioMulheres = mulheres
        .map((mulher) => mulher.salario)
        .reduce((cont, salario) => cont += salario);
    var mediaSalarioMulheres = salarioMulheres/mulheres.length;

    var homens = pessoas.where((e) => e.sexo == 'M');
    var salarioHomens = homens
        .map((homem) => homem.salario)
        .reduce((cont, salario) => cont += salario);
    var mediaSalarioHomens = salarioHomens/homens.length;

    if (mediaSalarioHomens > mediaSalarioMulheres) {
      return 'O salário dos homens é maior';
    }
    else {
      return 'O salário das mulheres é maior';
    }
  }
}