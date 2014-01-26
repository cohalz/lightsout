title.backgroundColor = "#ffd7ae"
labelColor = "#9a4e00"
startColor = "#8bedbb"
goalColor = "#ffb162"
n = 5
stagenumber = 16
mirrorFlag = 0
borderType = 1
changeFlag = 0
a = 0
b = 0
Ti.include "property.js"
listener = ->
  [x,y]=[getX(@),getY(@)]
  if (count isnt 1)
    if((x is a and (b+1 is y or b-1 is y) or (y is b and(a+1 is x or a-1 is x))))
      toChange x,y
    else
      resetButton.fireEvent("touchstart")
  else
    toChange x,y
  [a,b] = [x,y]
  clear(stagenumber) if clearCount >= n*n
for i in [0...n]
  for j in [0...n]
    label[i][j+3].addEventListener "touchstart",listener
