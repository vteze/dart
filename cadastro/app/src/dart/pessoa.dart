class Pessoa {
  String _nome;
  String _sexo;
  int _idade;
  double _salario;

  Pessoa (this._nome, this._sexo, this._idade, this._salario);

  String get nome => this._nome;
  String get sexo => this._sexo.toUpperCase();
  int get idade => this._idade;
  double get salario => this._salario;

  @override
  String toString () => '''
  
  Nome: $_nome, Sexo: ${_sexo.toUpperCase()}, Idade: $_idade, Salário: $_salario''';
}