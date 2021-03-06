// Generated by CoffeeScript 1.6.3
var borderType, changeFlag, goalColor, i, j, labelColor, listener, mirrorFlag, n, stagenumber, startColor, _i, _j;

title.backgroundColor = "#ffd7ae";

labelColor = "#9a4e00";

startColor = "#cf92b0";

goalColor = "#a4a7bc";

n = 5;

stagenumber = 19;

mirrorFlag = 0;

borderType = 1;

changeFlag = 1;

Ti.include("property.js");

listener = function() {
  var x, y, _ref;
  _ref = [getX(this), getY(this)], x = _ref[0], y = _ref[1];
  toChange(x, y);
  if ((count - 1) % 4 === 0) {
    toChange(x, y + 1, x, y + 2, x - 1, y + 2, x + 1, y + 2);
  }
  if ((count - 1) % 4 === 1) {
    toChange(x - 1, y, x - 2, y, x - 2, y - 1, x - 2, y + 1);
  }
  if ((count - 1) % 4 === 2) {
    toChange(x, y - 1, x, y - 2, x - 1, y - 2, x + 1, y - 2);
  }
  if ((count - 1) % 4 === 3) {
    toChange(x + 1, y, x + 2, y, x + 2, y + 1, x + 2, y - 1);
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
