class Retangulo {
  late num largura;
  late num altura;

  Retangulo(this.largura, this.altura);

  // parametro nomeado
  Retangulo.quadrado(num dimensao) {
    this.altura = dimensao;
    this.altura = dimensao;
  }

  // parametro nomeado que usa o construtor padrão
  Retangulo.quadradoConstrutor(num dimensao) : this(dimensao, dimensao);

  num area() => this.altura * this.largura;
}

void main(List<String> args) {
  Retangulo retangulo = new Retangulo(3, 4);
  Retangulo quadrado = new Retangulo.quadrado(3);

  print(retangulo.area());
  print(quadrado.area());
}
