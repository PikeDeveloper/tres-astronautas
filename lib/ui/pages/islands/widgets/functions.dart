import 'dart:math';

class Functions {
  static int randomBool() {
    int random = Random().nextInt(2);
    return random;
  }

  //
  static int calculateIsland(List<List<int>> array, bool onlyCrossIsland) {
    int islands = 0;
    for (int r = 0; r < array.length; r++) {
      for (int c = 0; c < array[r].length; c++) {
        if (array[r][c] == 1) {
          visitIsland(array, r, c, onlyCrossIsland);
          islands++;
        }
      }
    }
    return islands;
  }

  static visitIsland(
      List<List<int>> array, int r, int c, bool onlyCrossIsland) {
    if (r < 0 ||
        r >= array.length ||
        c < 0 ||
        c >= array[r].length ||
        array[r][c] != 1) {
      return;
    }
    array[r][c] = 2;
    if (onlyCrossIsland) {
      visitIsland(array, r - 1, c, onlyCrossIsland); // up
      visitIsland(array, r + 1, c, onlyCrossIsland); // down
      visitIsland(array, r, c - 1, onlyCrossIsland); // left
      visitIsland(array, r, c + 1, onlyCrossIsland); // right
    } else {
      {
        visitIsland(array, r - 1, c, onlyCrossIsland); // up
        visitIsland(array, r - 1, c - 1, onlyCrossIsland); // up-left
        visitIsland(array, r, c - 1, onlyCrossIsland); // left
        visitIsland(array, r + 1, c - 1, onlyCrossIsland); // down-left
        visitIsland(array, r + 1, c, onlyCrossIsland); // down
        visitIsland(array, r + 1, c + 1, onlyCrossIsland); // down-right
        visitIsland(array, r, c + 1, onlyCrossIsland); // right
        visitIsland(array, r - 1, c + 1, onlyCrossIsland); // up-right
      }
    }
  }

  static List<List<int>> newArray( int rows, int columns) {
    List<List<int>> array = [];
    for (int i = 0; i < rows; i++) {
      array.add(newRow(columns));
    }
    return array;
  }

  static List<int> newRow(int columns) {
    List<int> newRow = [];
    for (int i = 0; i < columns; i++) {
      newRow.add(Functions.randomBool());
    }
    return newRow;
  }
}
