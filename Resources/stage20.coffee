title.backgroundColor = "#ffd7ae"
labelColor = "#9a4e00"
startColor = "#a4a7bc"
goalColor = "#21222d"
n = 5
stagenumber = 20
mirrorFlag = 0
borderType = 1
changeFlag = 1
Ti.include "property.js"
listener = ->
  [x,y]=[getX(@),getY(@)]
  toChange x,y, x-1,y+1, x+1,y-1 ,x+1,y+1, x-1,y-1
  clear(stagenumber) if clearCount >= n*n
for i in [0...n]
  for j in [0...n]
    label[i][j+3].addEventListener "touchstart",listener
