class Pessoa {
  String _nome;
  String _sexo;
  var _idade;
  var _salario;

  Pessoa (this._nome, this._sexo, this._idade, this._salario);

  String get nome => this._nome;
  String get sexo => this._sexo.toUpperCase();
  int get idade => this._idade;
  int get salario => this._salario;

  @override
  String toString () => '''
  
  Nome: $_nome, Sexo: ${_sexo.toUpperCase()}, Idade: $_idade, Salário: $_salario''';
}