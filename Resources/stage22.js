// Generated by CoffeeScript 1.6.3
var borderType, changeFlag, goalColor, i, j, labelColor, listener, mirrorFlag, n, stagenumber, startColor, _i, _j;

title.backgroundColor = "#50000a";

labelColor = "#ff3c55";

startColor = "#3a4aff";

goalColor = "#d7daff";

n = 5;

stagenumber = 22;

mirrorFlag = 1;

borderType = 1;

changeFlag = 1;

Ti.include("property.js");

listener = function() {
  var x, y, _ref;
  _ref = [getX(this), getY(this)], x = _ref[0], y = _ref[1];
  if ((count - 1) % 2 === 0) {
    toChange(x, y);
  }
  if ((count - 1) % 2 === 1) {
    toChange(y, x);
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
