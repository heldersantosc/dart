void main(List<String> args) {
  int idade = 1;

  while (idade < 50) {
    print(idade);

    idade++;
  }

  do {
    print("object");
    idade++;
  } while (idade < 100);
}
