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
}