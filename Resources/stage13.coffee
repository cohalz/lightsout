title.backgroundColor = "#b7f4f4"
labelColor = "#f4b7b7"
startColor = "#ab0105"
goalColor = "#5fe6d0"
n = 5
stagenumber = 13
mirrorFlag = 0
borderType = 0
changeFlag = 1
Ti.include "property.js"
listener = ->
  [x,y]=[getX(@),getY(@)]
  toChange x,y+1, x-1,y+1, x+1,y+1 if (count-1)%4 is 0
  toChange x+1,y+1, x+1,y, x+1,y-1 if (count-1)%4 is 1
  toChange x-1,y-1, x,y-1, x+1,y-1 if (count-1)%4 is 2
  toChange x-1,y+1, x-1,y-1, x-1,y if (count-1)%4 is 3
  clear(stagenumber) if clearCount >= n*n
for i in [0...n]
  for j in [0...n]
    label[i][j+3].addEventListener "touchstart",listener
