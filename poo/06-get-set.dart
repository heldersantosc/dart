void main(List<String> args) {
  //

  Quadrado quadrado = new Quadrado();

  print(quadrado.area());
  quadrado.showArea();
}

abstract class Forma {
  num area() {
    return 0;
  }
}

class Quadrado extends Forma {
  // atributos
  late num _dimensao;

  // get and set
  num get dimensao => _dimensao;

  set dimensao(num dimensao) {
    _dimensao = dimensao;
  }

  // método de sobrescrita
  @override
  num area() {
    return 1;
  }

  void showArea() {
    print(area());
  }
}
