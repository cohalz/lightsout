// Generated by CoffeeScript 1.6.3
var a, change;

a = 1;

change = function(x, y) {
  var n;
  Ti.API.info(x);
  Ti.API.info(y);
  n = 5;
  if ((3 <= x && x < n + 3) && (0 <= y && y < n)) {
    if (label[y][x].flag === 0) {
      label[y][x].backgroundColor = goalColor;
      label[y][x].flag = 1;
      return clearCount++;
    } else if (changeFlag === 1) {
      label[y][x].backgroundColor = startColor;
      label[y][x].flag = 0;
      return clearCount--;
    }
  } else if (mirrorFlag === 1) {
    if (y < 0) {
      change(x, y + n);
    }
    if (y >= n) {
      change(x, y - n);
    }
    if (x < 0 + 3) {
      change(x + n, y);
    }
    if (x >= n + 3) {
      return change(x - n, y);
    }
  } else if (mirrorFlag === 2) {
    if (y < 0) {
      change(x, y + n);
    }
    if (y >= n) {
      return change(x, y - n);
    }
  } else if (mirrorFlag === 3) {
    if (x < 0 + 3) {
      change(x + n, y);
    }
    if (x >= n + 3) {
      return change(x - n, y);
    }
  } else if (mirrorFlag === 4) {
    if (y < 0) {
      change(x, n - y - 1);
    }
    if (y >= n) {
      change(x, 2 * n - y - 1);
    }
    if (x < 0 + 3) {
      change(n - x - 1, y);
    }
    if (x >= n + 3) {
      return change(2 * n - x - 1, y);
    }
  } else if (mirrorFlag === 5) {
    if (y < 0) {
      change(x, n - y - 1);
    }
    if (y >= n) {
      return change(x, 2 * n - y - 1);
    }
  } else if (mirrorFlag === 6) {
    if (x < 0 + 3) {
      change(n - x - 1, y);
    }
    if (x >= n + 3) {
      return change(2 * n - x - 1, y);
    }
  } else if (mirrorFlag === 7) {
    if (y < 0) {
      change(x, n - y - 1);
    }
    if (y >= n) {
      change(x, 2 * n - y - 1);
    }
    if (x < 0 + 3) {
      change(x + n, y);
    }
    if (x >= n + 3) {
      return change(x - n, y);
    }
  } else if (mirrorFlag === 8) {
    if (y < 0) {
      change(x, y + n);
    }
    if (y >= n) {
      change(x, y - n);
    }
    if (x < 0 + 3) {
      change(n - x - 1, y);
    }
    if (x >= n + 3) {
      return change(2 * n - x - 1, y);
    }
  }
};
