void main(List<String> args) {
  //
  Pessoa helder = new Pessoa('Helder', 28);

  helder.hello();
}

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void hello() {
    String msg = 'Hello ' + nome;

    msg = msg + ', ' + idade.toString() + ' anos';

    print(msg);
  }
}
