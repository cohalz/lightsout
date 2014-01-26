title.backgroundColor = "#b7f4f4"
labelColor = "#f4b7b7"
startColor = "#41d921"
goalColor = "#ab0105"
n = 5
stagenumber = 12
mirrorFlag = 1
borderType = 0
changeFlag = 1
Ti.include "property.js"
listener = ->
  [x,y]=[getX(@),getY(@)]
  toChange x,y, x,y+1, x,y+2, x,y+3, x-1,y+2
  clear(stagenumber) if clearCount >= n*n
for i in [0...n]
  for j in [0...n]
    label[i][j+3].addEventListener "touchstart",listener
