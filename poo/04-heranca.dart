void main(List<String> args) {
  //
  Funcionario helder = new Funcionario('Helder', 28, 1500);

  helder.hello();
  helder.showSalario();
}

// heranca
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

class Funcionario extends Pessoa {
  double salario = 0.0;

  Funcionario(String nome, int idade, this.salario) : super(nome, idade);

  void showSalario() {
    print(salario);
  }
}
