class Animal {
  String _nome = "";
  String _raca = "";
  int _idade = 0;
  int _codigo = 0;

  Animal();

  Animal.fromJson (Map <String, dynamic> json)
  :
    _nome = json ['nome'],
    _raca = json ['raca'],
    _idade = json ['idade'],
    _codigo = json ['codigo']
  ;

  get getCodigo => this._codigo;

 set setCodigo( codigo) => this._codigo = codigo;

  get getNome => this._nome;

 set setNome( nome) => this._nome = nome;

  get getRaca => this._raca;

 set setRaca( raca) => this._raca = raca;

  get getIdade => this._idade;

 set setIdade( idade) => this._idade = idade;


}