// Generated by CoffeeScript 1.6.3
var borderType, changeFlag, goalColor, i, j, labelColor, listener, mirrorFlag, n, stagenumber, startColor, _i, _j;

title.backgroundColor = "#b7f4b7";

labelColor = "#f4b7b7";

startColor = "#eeeeee";

goalColor = "#00b4ff";

n = 5;

stagenumber = 10;

mirrorFlag = 1;

borderType = 0;

changeFlag = 1;

Ti.include("property.js");

listener = function() {
  var x, y, _ref;
  _ref = [getX(this), getY(this)], x = _ref[0], y = _ref[1];
  if ((count - 1) % 8 === 0) {
    toChange(x, y + 1);
  }
  if ((count - 1) % 8 === 1) {
    toChange(x + 1, y + 1);
  }
  if ((count - 1) % 8 === 2) {
    toChange(x + 1, y);
  }
  if ((count - 1) % 8 === 3) {
    toChange(x + 1, y - 1);
  }
  if ((count - 1) % 8 === 4) {
    toChange(x, y - 1);
  }
  if ((count - 1) % 8 === 5) {
    toChange(x - 1, y - 1);
  }
  if ((count - 1) % 8 === 6) {
    toChange(x - 1, y);
  }
  if ((count - 1) % 8 === 7) {
    toChange(x - 1, y + 1);
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
