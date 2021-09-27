import 'lib/src/numerus.dart';
import 'dart:io';

int getCentury(int year) {
  return ((year - 1) / 100 + 1).floor();
}

String getRomanCentury(int year) {
  return ((year - 1) / 100 + 1).floor().toRomanNumeralString();
}

void main() {
  print("Introduce un año");
  try {
    int year = int.parse(stdin.readLineSync().toString());
    if(year < 1) {
      print("El año minimo es 1");
    } else {
      print("El siglo es el " + getCentury(year).toString());
      print("El siglo en romano es el " + getRomanCentury(year));
    }
  } catch(FormatException) {
    print("Solo admitimos numeros");
  }

}