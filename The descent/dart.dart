/**
 * https://dart.dev/
 **/

import 'dart:io';


int find_highest(array) {
  var top = 0;
  var index = 0;
 
  for (int i = 0; i < 8; i++) {
    if (array[i] > top) {
      top = array[i];
      index = i;
    }
  }
  
  return index;
}

void main() {
    var tab;

    // game loop
    while (true) {
        tab = [];

        for (int i = 0; i < 8; i++) {
            int mountainH = int.parse(stdin.readLineSync()); // represents the height of one mountain.
            tab.add(mountainH);
        }
        // List<int> tab = new Iterable.generate(8, (i) => int.parse(stdin.readLineSync())).toList();
        // stderr.writeln('Debug messages...');
            
        print(find_highest(tab)); // The index of the mountain to fire on.
    }
}