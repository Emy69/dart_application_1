bool estaBalanceada(String cadena) {
  List<String> pila = [];
  var listaCracteres = cadena.split('');
  for (var caracter in listaCracteres) {
    if (caracter == '(') {
      pila.add(caracter);
    } 
    if (caracter == ')') {
      if (pila.isEmpty) return false;
      pila.removeLast();
    }
  }

  return pila.isEmpty;
}