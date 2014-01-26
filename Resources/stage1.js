var borderType, changeFlag, goalColor, i, j, labelColor, listener, mirrorFlag, n, sound, stagenumber, startColor, _i, _j;

title.backgroundColor = "#ed8b9b";

labelColor = "#6CB7AB";

startColor = "#eddd8b";

goalColor = "#8beddd";

n = 5;

stagenumber = 1;

mirrorFlag = 0;

borderType = 1;

changeFlag = 0;

Ti.include("property.js");

listener = function() {
  var x, y, _ref;
  _ref = [getX(this), getY(this)], x = _ref[0], y = _ref[1];
  toChange(x, y, n - x - 1, n - y - 1);
  if (clearCount >= n * n) {
    return clear(stagenumber);
  }
};

for (i = _i = 0; 0 <= n ? _i < n : _i > n; i = 0 <= n ? ++_i : --_i) {
  for (j = _j = 0; 0 <= n ? _j < n : _j > n; j = 0 <= n ? ++_j : --_j) {
    label[i][j + 3].addEventListener("touchstart", listener);
  }
}
