// Generated by CoffeeScript 1.6.3
var toChange,
  __slice = [].slice;

toChange = function() {
  var changeArray, i, _i, _ref, _results;
  changeArray = 1 <= arguments.length ? __slice.call(arguments, 0) : [];
  _results = [];
  for (i = _i = 0, _ref = changeArray.length; _i < _ref; i = _i += 2) {
    _results.push(change(changeArray[i] + 3, changeArray[i + 1]));
  }
  return _results;
};
