// Generated by CoffeeScript 1.6.3
var borderType, changeFlag, goalColor, i, j, labelColor, listener, mirrorFlag, n, stagenumber, startColor, _i, _j;

title.backgroundColor = "#b7f4b7";

labelColor = "#f4b7b7";

startColor = "#855d7b";

goalColor = "#3d550d";

n = 5;

stagenumber = 6;

mirrorFlag = 0;

borderType = 0;

changeFlag = 1;

Ti.include("property.js");

listener = function() {
  var x, y, _ref;
  _ref = [getX(this), getY(this)], x = _ref[0], y = _ref[1];
  if (x + 1 !== y) {
    toChange(x, y, x, y - 1, x, y + 1);
  }
  if (x + 1 === y) {
    toChange(x, y);
  }
  if (clearCount >= n * n) {
    return clear(stagenumber);
  }
};

for (i = _i = 0; 0 <= n ? _i < n : _i > n; i = 0 <= n ? ++_i : --_i) {
  for (j = _j = 0; 0 <= n ? _j < n : _j > n; j = 0 <= n ? ++_j : --_j) {
    label[i][j + 3].addEventListener("touchstart", listener);
  }
}