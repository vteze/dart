import '../dart/pessoa.dart';
import '../dart/cadastro.dart';

void main() {

  var cadastro = Cadastro(pessoas: [
    Pessoa('Victor', 'M', 18, 2000),
    Pessoa('Marina', 'F', 17, 500),
    Pessoa('Rafael', 'M', 20, 10),
    Pessoa('Julia', 'F', 30, 10000),
  ]);

  print(cadastro.nomes);
  print(cadastro.verificarSexo());
}