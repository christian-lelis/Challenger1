import 'package:flutter/cupertino.dart';

class Conta {
  int i = 0;
  int a = 0; //This is the number of answare from user
  int x = 3; //I will use this number for descover whats number is diveble for 5
  int y = 5; //I will use this number for descover whats number is diveble for
  int xresult = 0;
  int yresult = 0;

  soma() {
    for (i = 1; i < a; i++) {
      if (x % a == 0) {
        xresult = i + i;
      }
    }
    for (i = 1; i < a; i++) {
      if (y % a == 0) {
        yresult = i + i;
      }
    }
  }
}
