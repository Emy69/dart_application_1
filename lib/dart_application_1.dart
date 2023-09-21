bool estaBalanceada(String cadena) {
Map<String, String> caracteres = {
  ')': '(', 
  ']': '[',
};  
  List<String> pila = [];
  List<String> abiertos = ['(', '['];
  List<String> cerrados = [')', ']'];
  var listaCracteres = cadena.split('');
  for (var caracter in listaCracteres) {
    if (abiertos.contains(caracter)) {
      pila.add(caracter);
    }

    if (cerrados.contains(caracter)) {
      if (pila.isEmpty) return false;
      if (pila.last != caracteres[caracter]) return false;
      pila.removeLast();
      
    }
  }
    

  return pila.isEmpty;
}