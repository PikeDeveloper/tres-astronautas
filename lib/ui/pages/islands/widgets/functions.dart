import 'dart:math';

class Functions {
  static int randomBool() {
    int random = 0;
    random = Random().nextInt(100) < 50? 0 : 1;
    return random;
  }
}
