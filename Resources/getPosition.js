// Generated by CoffeeScript 1.6.3
var getX, getY;

getX = function(labl) {
  var i, j, _i, _j;
  for (i = _i = 0; _i < 5; i = ++_i) {
    for (j = _j = 0; _j < 5; j = ++_j) {
      if (labl === label[i][j + 3]) {
        return j;
      }
    }
  }
};

getY = function(labl) {
  var i, j, _i, _j;
  tapCountLabel.text++;
  count++;
  for (i = _i = 0; _i < 5; i = ++_i) {
    for (j = _j = 0; _j < 5; j = ++_j) {
      if (labl === label[i][j + 3]) {
        return i;
      }
    }
  }
};
