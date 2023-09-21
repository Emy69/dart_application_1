import 'dart:math';

import 'package:dart_application_1/dart_application_1.dart';
import 'package:test/test.dart';

void main() {

group('parentesis', () {
  test('si vacia esta balanceado', () {
  var resultado = estaBalanceada('');
  expect(resultado, equals (true));
});

test('(no esta balanceado)', () {
    var resultado = estaBalanceada('(');
    expect(resultado, equals (false));
  });

test(') no esta balanceado', () {
    var resultado = estaBalanceada(')');
    expect(resultado, equals (false));
  });

test('( d ) esta balanceado', () {
    var resultado = estaBalanceada('()');
    expect(resultado, equals (true));
  });

test(')( no balanceado', () {
    var resultado = estaBalanceada(')(');
    expect(resultado, equals (false));
  });
});

group('corchetes', () {
  test('[ no esta balanceado', () {
    var resultado = estaBalanceada('[');
    expect(resultado,  false);
  });

  test('[[([])]]', () {
    var resultado = estaBalanceada('[[([])]]');
    expect(resultado,  true);
  });
});

}
