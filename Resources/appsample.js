// Generated by CoffeeScript 1.3.3
(function() {
  var deviceWidth, heightBorder, i, j, label, num, pannelSize, view, widthBorder, win, _i, _j, _k, _l, _m, _n, _o, _p, _q, _r, _ref, _ref1, _ref2, _ref3, _s;

  win = Ti.UI.createWindow({
    backgroundColor: '#cced8b'
  });

  view = Ti.UI.createView();

  num = 5;

  label = new Array(num);

  widthBorder = new Array(num - 1);

  heightBorder = new Array(num);
  for (i = _i = 0; 0 <= num ? _i < num : _i > num; i = 0 <= num ? ++_i : --_i) {
    label[i] = new Array(num);
  }

  deviceWidth = Ti.Platform.displayCaps.platformWidth;

  pannelSize = deviceWidth / num;

  for (i = _j = 0; 0 <= num ? _j < num : _j > num; i = 0 <= num ? ++_j : --_j) {
    for (j = _k = 0; 0 <= num ? _k < num : _k > num; j = 0 <= num ? ++_k : --_k) {
      label[i][j] = Ti.UI.createLabel({
        flag: 0,
        bottom: pannelSize * i,
        left: pannelSize * j,
        width: pannelSize,
        height: pannelSize,
        backgroundColor: "#8bcced"
      });
    }
  }

  for (i = _l = 0, _ref = widthBorder.length; 0 <= _ref ? _l < _ref : _l > _ref; i = 0 <= _ref ? ++_l : --_l) {
    widthBorder[i] = Ti.UI.createLabel({
      bottom: 0,
      left: pannelSize * (i + 1),
      width: 1,
      height: deviceWidth,
      backgroundColor: "#888888"
    });
  }

  for (i = _m = 0, _ref1 = heightBorder.length; 0 <= _ref1 ? _m < _ref1 : _m > _ref1; i = 0 <= _ref1 ? ++_m : --_m) {
    heightBorder[i] = Ti.UI.createLabel({
      bottom: pannelSize * (i + 1),
      left: 0,
      width: deviceWidth,
      height: 1,
      backgroundColor: "#888888"
    });
  }

  for (i = _n = 0; 0 <= num ? _n < num : _n > num; i = 0 <= num ? ++_n : --_n) {
    for (j = _o = 0; 0 <= num ? _o < num : _o > num; j = 0 <= num ? ++_o : --_o) {
      view.add(label[i][j]);
    }
  }

  for (i = _p = 0, _ref2 = widthBorder.length; 0 <= _ref2 ? _p < _ref2 : _p > _ref2; i = 0 <= _ref2 ? ++_p : --_p) {
    view.add(widthBorder[i]);
  }

  for (i = _q = 0, _ref3 = heightBorder.length; 0 <= _ref3 ? _q < _ref3 : _q > _ref3; i = 0 <= _ref3 ? ++_q : --_q) {
    view.add(heightBorder[i]);
  }

  win.add(view);

  win.open();

  for (i = _r = 0; 0 <= num ? _r < num : _r > num; i = 0 <= num ? ++_r : --_r) {
    for (j = _s = 0; 0 <= num ? _s < num : _s > num; j = 0 <= num ? ++_s : --_s) {
      if (label[i][j].addEventListener) {
        label[i][j].addEventListener("touchstart", function(e) {
          if (this.flag === 0) {
            this.backgroundColor = "#edac8b";
            return this.flag = 1;
          } else {
            this.backgroundColor = "#8bcced";
            return this.flag = 0;
          }
        });
      }
    }
  }

}).call(this);
