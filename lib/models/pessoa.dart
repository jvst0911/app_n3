class Pessoa {
  String? nome;
  String? documento;
  String? email;

  Pessoa._(String nome, String documento, String email) {
    this.nome = nome;
    this.documento = documento;
    this.email = email;
  }

  Pessoa of(String nome, String documento, String email) {
    return new Pessoa._(nome, documento, email);
  }
}
