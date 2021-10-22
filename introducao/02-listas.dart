void main() {
  List listaDeCompras = [1, 2, 3, 4, 5, "helder", 10.0, true];
  List listaDeComprasSingle = ["exibe quando tem somente um elemento"];
  Map user = {"nome": "Helder", "age": 28};

  // exibe lista de compras
  print(listaDeCompras);

  // exibe comprimento da lista
  print(listaDeCompras.length);

  // exibe o primeiro item da lista
  print(listaDeCompras.first);

  // exibe o ultimo item da lista
  print(listaDeCompras.last);

  // exibe quando tem somente 1 item na lista
  print(listaDeComprasSingle.single);

  // exibe o map user
  print(user);

  // exibe via atributo no map
  print(user['age']);

  // exibe via posição na lista
  print(listaDeCompras[0]);
}
