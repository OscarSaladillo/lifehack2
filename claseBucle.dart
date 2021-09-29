
import 'dart:io';

class nIterator {
  int _nEle;
  Set<int> set = {};

  nIterator(this._nEle);

  nIterator.withList(int numE) {
    _nEle = numE;
    for(int i=0;i<=_nEle;i++) {
      set.add(i);
    }
  }

  void iterate() {
    for(int i=0;i<=_nEle;i++) {
      print(i);
    }
  }

  void iterate2() {
    for(int i in set) {
      print(i);
    }
  }

}

void main() {
  nIterator iterador, iterador2;
  print("Introduce el numero de elementos");
  iterador = nIterator(int.parse(stdin.readLineSync().toString()))..iterate();
  iterador2 = nIterator.withList(int.parse(stdin.readLineSync().toString()))..iterate();
}
