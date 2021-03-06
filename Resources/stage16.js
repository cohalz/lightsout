// Generated by CoffeeScript 1.6.3
var a, b, borderType, changeFlag, goalColor, i, j, labelColor, listener, mirrorFlag, n, stagenumber, startColor, _i, _j;

title.backgroundColor = "#ffd7ae";

labelColor = "#9a4e00";

startColor = "#8bedbb";

goalColor = "#ffb162";

n = 5;

stagenumber = 16;

mirrorFlag = 0;

borderType = 1;

changeFlag = 0;

a = 0;

b = 0;

Ti.include("property.js");

listener = function() {
  var x, y, _ref, _ref1;
  _ref = [getX(this), getY(this)], x = _ref[0], y = _ref[1];
  if (count !== 1) {
    if (x === a && (b + 1 === y || b - 1 === y) || (y === b && (a + 1 === x || a - 1 === x))) {
      toChange(x, y);
    } else {
      resetButton.fireEvent("touchstart");
    }
  } else {
    toChange(x, y);
  }
  _ref1 = [x, y], a = _ref1[0], b = _ref1[1];
  if (clearCount >= n * n) {
    return clear(stagenumber);
  }
};

for (i = _i = 0; 0 <= n ? _i < n : _i > n; i = 0 <= n ? ++_i : --_i) {
  for (j = _j = 0; 0 <= n ? _j < n : _j > n; j = 0 <= n ? ++_j : --_j) {
    label[i][j + 3].addEventListener("touchstart", listener);
  }
}
