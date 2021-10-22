import 'dart:convert';

void main(List<String> args) {
  //
  Pessoa pessoa = new Pessoa(primeiro_nome: 'Helder', ultimo_nome: 'Santos');
  PessoaDataClass pessoa2 = new PessoaDataClass(primeiro_nome: 'Helder', ultimo_nome: 'Santos');

  pessoa2.primeiro_nome = 'Helder';

  print(pessoa.nomeCompleto());
  print(pessoa2.toMap());
}

class Pessoa {
  late String primeiro_nome;
  late String ultimo_nome;

  Pessoa({required this.primeiro_nome, required this.ultimo_nome});

  String nomeCompleto() => this.primeiro_nome + " " + this.ultimo_nome;
}

class PessoaDataClass {
  String primeiro_nome;
  String ultimo_nome;

  PessoaDataClass({required this.primeiro_nome, required this.ultimo_nome});

  PessoaDataClass copyWith({String? primeiro_nome, String? ultimo_nome}) {
    return PessoaDataClass(
      primeiro_nome: primeiro_nome ?? this.primeiro_nome,
      ultimo_nome: ultimo_nome ?? this.ultimo_nome,
    );
  }

  Map<String, dynamic> toMap() => {'primeiro_nome': primeiro_nome, 'ultimo_nome': ultimo_nome};

  factory PessoaDataClass.fromMap(Map<String, dynamic> map) =>
      PessoaDataClass(primeiro_nome: map['primeiro_nome'], ultimo_nome: map['ultimo_nome']);

  String toJson() => json.encode(toMap());

  factory PessoaDataClass.fromJson(String source) => PessoaDataClass.fromMap(json.decode(source));

  @override
  String toString() => 'PessoaDataClass(primeiro_nome: $primeiro_nome, ultimo_nome: $ultimo_nome)';

  @override
  bool operator ==(Object other) {
    bool isIdentical = identical(this, other);

    switch (isIdentical) {
      case true:
        return isIdentical;

      default:
        return other is PessoaDataClass && other.primeiro_nome == primeiro_nome && other.ultimo_nome == ultimo_nome;
    }
  }

  @override
  int get hashCode => primeiro_nome.hashCode ^ ultimo_nome.hashCode;
}
