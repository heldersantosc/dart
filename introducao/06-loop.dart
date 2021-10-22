void main(List<String> args) {
  // lista de varias coisas
  List listaDeCompras = [1, 2, 3, 4, 5, 6, 7, 'helder', 0.4];

  // lista somente de inteiros
  List<int> listaDeInteiros = [1, 2];
  print(listaDeInteiros);

  // for simples
  for (var i = 0; i < listaDeCompras.length; i++) {
    print(listaDeCompras[i].toString());
  }

  // usando forEach
  listaDeCompras.forEach((element) {
    print(element.toString());
  });

  // transforma uma lista em um map indexado
  Map mapDeUmaLista = listaDeCompras.asMap();
  print(mapDeUmaLista);
}
