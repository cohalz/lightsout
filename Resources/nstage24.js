// Generated by CoffeeScript 1.6.3
var borderType, changeFlag, colorBackground, colorBorder, goalColor, i, j, mirrorFlag, n, startColor, _i, _j;

colorBackground = "#ed8b9b";

colorBorder = colorBackground;

startColor = "#8beddd";

goalColor = "#eddd8b";

n = 5;

mirrorFlag = 0;

borderType = 1;

changeFlag = 1;

Ti.include("property.js");

for (i = _i = 0; 0 <= n ? _i < n : _i > n; i = 0 <= n ? ++_i : --_i) {
  for (j = _j = 0; 0 <= n ? _j < n : _j > n; j = 0 <= n ? ++_j : --_j) {
    label[i][j].addEventListener("touchstart", function(e) {
      var second, timeArray, x, y, _ref;
      _ref = [getX(this), getY(this)], x = _ref[0], y = _ref[1];
      timeArray = timerLabel.text.split(":");
      second = parseInt(parseInt(timeArray[0]) * 60 + parseInt(timeArray[1]));
      toChange(second % 5, parseInt((second % 25) / 5));
      if (clearCount >= n * n) {
        return clear(24);
      }
    });
  }
}
