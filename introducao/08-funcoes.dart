void main(List<String> args) {
  helloWorld();
  print(capitalize("helder santos de castro"));

  parametrosOpcionais('helder');
  parametrosOpcionais('helder', idade: 28);
  parametrosPosicionais('helder', 27);
  parametrosPosicionais('helder', 27, 'castro');
}

// não retorna nada
void helloWorld() {
  print("Hello world");
}

// retornando um inteiro
int returnSomeIntValue() {
  return 1;
}

// retornando string
String returnSomeName() {
  return "my name";
}

// por parametro
String capitalize(String value) {
  return value[0].toUpperCase() + value.substring(1, value.length);
}

// parametros opcionais
void parametrosOpcionais(String nome, {int idade: 0}) {
  print(nome + ', ' + idade.toString());
}

// parametros posicionais
void parametrosPosicionais(String nome, [int idade = 0, String sobrenome = '']) {
  print(nome + ', ' + idade.toString() + ', ' + sobrenome);
}
